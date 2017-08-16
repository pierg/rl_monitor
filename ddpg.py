from gym_torcs import TorcsEnv
import numpy as np
import random
import argparse
import os, sys
from keras.models import model_from_json, Model
from keras.models import Sequential
from keras.layers.core import Dense, Dropout, Activation, Flatten
from keras.optimizers import Adam
import tensorflow as tf
from keras.engine.training import collect_trainable_weights
import json
import argparse

from ReplayBuffer import ReplayBuffer
from ActorNetwork import ActorNetwork
from CriticNetwork import CriticNetwork
from OU import OU
from shutil import copy
import timeit
import time
import json
from reward import reward
from larva import *
from results import Results
from utils import *
from array import array

OU = OU()       #Ornstein-Uhlenbeck Process

def playGame(train_indicator=1):    #1 means Train, 0 means simply Run
    
    # -n number of episodes
    # -r name of the reward function
    # -x time of the simulation (in hour)
    # -k should we keep the model or not (boolean)
    # -a add opponents (change data size and add opponents sensors)
    monitor, keepModel, simTime, episode_count, opponents = getArgs()

    # create the filename, initialize all the results
    filename = "results" + monitor + "_" + time.strftime("%d_%m_%Y_%H%M%S")
    os.mkdir( "models/" + filename, 0755 );
    if not os.path.exists("results"):
        os.mkdir( "results", 0755 );
    results = Results(filename)

    # get time of the start of the simulation
    startSim = time.time()

    iteration = 1

    # Iteration loop
    while True:

        BUFFER_SIZE = 100000
        BATCH_SIZE = 32
        GAMMA = 0.99
        TAU = 0.001     #Target Network HyperParameters
        LRA = 0.0001    #Learning rate for Actor
        LRC = 0.001     #Lerning rate for Critic

        action_dim = 3  #Steering/Acceleration/Brake
        state_dim = 29  #of sensors input = states + action

        # if there is opponents we send more sensors so the state is bigger
        if opponents:
            state_dim = state_dim + 36

        np.random.seed(1337)

        vision = False

        EXPLORE = 100000.

        max_steps = 100000
        done = False
        step = 0
        epsilon = 1
        indicator = 0

        #Tensorflow GPU optimization
        config = tf.ConfigProto()
        config.gpu_options.allow_growth = True
        sess = tf.Session(config=config)
        from keras import backend as K
        K.set_session(sess)

        actor = ActorNetwork(sess, state_dim, action_dim, BATCH_SIZE, TAU, LRA)
        critic = CriticNetwork(sess, state_dim, action_dim, BATCH_SIZE, TAU, LRC)
        buff = ReplayBuffer(BUFFER_SIZE)    #Create replay buffer

        # Generate a Torcs environment with the reward function
        env = TorcsEnv(reward, vision=vision, throttle=True,gear_change=False)

        #Now load the weight
        print("Now we load the weight")
        try:
            actor.model.load_weights("originalmodel/actormodel.h5")
            critic.model.load_weights("originalmodel/criticmodel.h5")
            actor.target_model.load_weights("originalmodel/actormodel.h5")
            critic.target_model.load_weights("originalmodel/criticmodel.h5")
            print("Weight load successfully")
        except:
            print("Cannot find the weight")

        # start an iteration -> get the starting time
        results.startIterationTime()
        finishSimulation = False

        # we make sure that the monitor is at the start state
        send_message_to_monitor("reset", 1024)

        print("TORCS Experiment Start.")
        for i in range(episode_count):

            print("Episode : " + str(i) + " Replay Buffer " + str(buff.count()))

            # start an episode -> get the starting time
            results.startEpisodeTime()

            if np.mod(i, 3) == 0:
                ob = env.reset(relaunch=True)   #relaunch TORCS every 3 episode because of the memory leak error
            else:
                ob = env.reset()

            # send opponent sensors to model if there is opponents
            if opponents:
                s_t = np.hstack((ob.angle, ob.track, ob.trackPos, ob.speedX, ob.speedY,  ob.speedZ, ob.wheelSpinVel/100.0, ob.rpm, ob.opponents))
            else:
                s_t = np.hstack((ob.angle, ob.track, ob.trackPos, ob.speedX, ob.speedY,  ob.speedZ, ob.wheelSpinVel/100.0, ob.rpm))
         
            total_reward = 0.
            for j in range(max_steps):
                loss = 0 
                epsilon -= 1.0 / EXPLORE
                a_t = np.zeros([1,action_dim])
                noise_t = np.zeros([1,action_dim])
                
                # create the action and add random factor if training mode
                a_t_original = actor.model.predict(s_t.reshape(1, s_t.shape[0]))
                noise_t[0][0] = train_indicator * max(epsilon, 0) * OU.function(a_t_original[0][0],  0.0 , 0.60, 0.30)
                noise_t[0][1] = train_indicator * max(epsilon, 0) * OU.function(a_t_original[0][1],  0.5 , 1.00, 0.10)
                noise_t[0][2] = train_indicator * max(epsilon, 0) * OU.function(a_t_original[0][2], -0.1 , 1.00, 0.05)

                a_t[0][0] = a_t_original[0][0] + noise_t[0][0]
                a_t[0][1] = a_t_original[0][1] + noise_t[0][1]
                a_t[0][2] = a_t_original[0][2] + noise_t[0][2]

                # pass a step -> get observation (obj), reward, if episode is ended, info (?), if iteration is ended, observation (dict)
                ob, r_t, done, info, finished, obs = env.step(a_t[0])

                # If it's a string go to the next episode (reset)
                if isinstance(r_t, basestring) : 
                    done = True
                    r_t = 0

                # send opponent sensors to model if there is opponents
                if opponents:
                    s_t1 = np.hstack((ob.angle, ob.track, ob.trackPos, ob.speedX, ob.speedY,  ob.speedZ, ob.wheelSpinVel/100.0, ob.rpm, ob.opponents))
                else:
                    s_t1 = np.hstack((ob.angle, ob.track, ob.trackPos, ob.speedX, ob.speedY,  ob.speedZ, ob.wheelSpinVel/100.0, ob.rpm))
            
                buff.add(s_t, a_t[0], r_t, s_t1, done)      #Add replay buffer
                
                #Do the batch update
                batch = buff.getBatch(BATCH_SIZE)
                states = np.asarray([e[0] for e in batch])
                actions = np.asarray([e[1] for e in batch])
                rewards = np.asarray([e[2] for e in batch])
                new_states = np.asarray([e[3] for e in batch])
                dones = np.asarray([e[4] for e in batch])
                y_t = np.asarray([e[1] for e in batch])

                target_q_values = critic.target_model.predict([new_states, actor.target_model.predict(new_states)])  
               
                for k in range(len(batch)):
                    if dones[k]:
                        y_t[k] = rewards[k]
                    else:
                        y_t[k] = rewards[k] + GAMMA*target_q_values[k]
           
                if (train_indicator):
                    loss += critic.model.train_on_batch([states,actions], y_t) 
                    a_for_grad = actor.model.predict(states)
                    grads = critic.gradients(states, a_for_grad)
                    actor.train(states, grads)
                    actor.target_train()
                    critic.target_train()

                total_reward += r_t
                s_t = s_t1

                # check if simulation time is up
                finishSimulation = isSimulationTimeUp(startSim, simTime)

                # update the results with the step
                results.stepUpdate(r_t, obs, a_t[0])

                # print every 15 steps
                if np.mod(step,15) == 0:
                    print("Episode", i, "Step", step, "Action", a_t, "Reward", r_t, "Loss", loss)
                    results.writeInFileUnfinishedIteration()

                step += 1

                # if episode/iteration/simulation is done break the loop
                if done or finished or finishSimulation:
                    break

            # save models
            if np.mod(i, 3) == 0:
                if (train_indicator):
                    print("Now we save model")
                    actor.model.save_weights("models/"+ filename + "/actormodel"+ str(iteration) +".h5", overwrite=True)
                    with open("models/"+ filename + "/actormodel"+ str(iteration) +".json", "w") as outfile:
                        json.dump(actor.model.to_json(), outfile)

                    critic.model.save_weights("models/"+ filename + "/criticmodel"+ str(iteration) +".h5", overwrite=True)
                    with open("models/"+ filename + "/criticmodel"+ str(iteration) +".json", "w") as outfile:
                        json.dump(critic.model.to_json(), outfile)

            print("TOTAL REWARD @ " + str(i) +"-th Episode  : Reward " + str(total_reward))
            print("Total Step: " + str(step))
            print("")

            # end episode results
            results.endEpisode(step, total_reward)

            # if iteration/simulation is finished break the loop
            if finished or finishSimulation:
                break

        # write the results of the full iteration
        results.writeInFile(finished);

        env.end()  # This is for shutting down TORCS
        print("Finish.")

        iteration += 1

        # if simulation is finished
        if finishSimulation:
            exit()

if __name__ == "__main__":
    playGame()
