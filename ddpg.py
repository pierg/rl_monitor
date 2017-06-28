from gym_torcs import TorcsEnv
import numpy as np
import random
import argparse
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
from reward import reward

OU = OU()       #Ornstein-Uhlenbeck Process

def playGame(train_indicator=1):    #1 means Train, 0 means simply Run

    parser = argparse.ArgumentParser()
    parser.add_argument("-n", type=int, help="number of episodes")
    args = parser.parse_args()

    iteration = 1

    isGoalReached = "goalReached = ["
    totalTime = "totalTime = ["
    episodeCount = "episodeCount = ["
    subtimes = ""
    steps = ""
    rewardsPerEpisode = ""
    rewardsPerStep = ""

    filename = "results" + time.strftime("%d-%m-%Y-%H%M%S")

    while True:

        BUFFER_SIZE = 100000
        BATCH_SIZE = 32
        GAMMA = 0.99
        TAU = 0.001     #Target Network HyperParameters
        LRA = 0.0001    #Learning rate for Actor
        LRC = 0.001     #Lerning rate for Critic

        action_dim = 3  #Steering/Acceleration/Brake
        state_dim = 29  #of sensors input

        np.random.seed(1337)

        vision = False

        EXPLORE = 100000.
        # Check if there's an arg
        if args.n > 0 :
            episode_count = args.n
        else :
            episode_count = 2000
        max_steps = 100000
        #reward = 0
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

        # Generate a Torcs environment
        env = TorcsEnv(reward, vision=vision, throttle=True,gear_change=False)

        # Get the results in a matlab format
        subtimes += "subtimes{" + str(iteration) + "} = ["
        steps += "step{" + str(iteration) + "} = ["
        rewardsPerEpisode += "rewardsPerEpisode{" + str(iteration) + "} = ["
        lastEpisodeStep = 0

        #copy("originalmodel/actormodel.h5", "actormodel.h5")
        #copy("originalmodel/criticmodel.h5", "criticmodel.h5")
        #copy("originalmodel/actormodel.json", "actormodel.json")
        #copy("originalmodel/criticmodel.json", "criticmodel.json")

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


        start = time.time()

        print("TORCS Experiment Start.")
        for i in range(episode_count):

            print("Episode : " + str(i) + " Replay Buffer " + str(buff.count()))

            # Set episode timer and initialize for Matlab
            startEpisode = time.time()
            rewardsPerStep += "rewardsPerStep{" + str(iteration) + "}{" + str(i+1) + "} = ["

            if np.mod(i, 3) == 0:
                ob = env.reset(relaunch=True)   #relaunch TORCS every 3 episode because of the memory leak error
            else:
                ob = env.reset()

            s_t = np.hstack((ob.angle, ob.track, ob.trackPos, ob.speedX, ob.speedY,  ob.speedZ, ob.wheelSpinVel/100.0, ob.rpm))
         
            total_reward = 0.
            for j in range(max_steps):
                loss = 0 
                epsilon -= 1.0 / EXPLORE
                a_t = np.zeros([1,action_dim])
                noise_t = np.zeros([1,action_dim])
                
                a_t_original = actor.model.predict(s_t.reshape(1, s_t.shape[0]))
                noise_t[0][0] = train_indicator * max(epsilon, 0) * OU.function(a_t_original[0][0],  0.0 , 0.60, 0.30)
                noise_t[0][1] = train_indicator * max(epsilon, 0) * OU.function(a_t_original[0][1],  0.5 , 1.00, 0.10)
                noise_t[0][2] = train_indicator * max(epsilon, 0) * OU.function(a_t_original[0][2], -0.1 , 1.00, 0.05)

                #The following code do the stochastic brake
                #if random.random() <= 0.1:
                #    print("********Now we apply the brake***********")
                #    noise_t[0][2] = train_indicator * max(epsilon, 0) * OU.function(a_t_original[0][2],  0.2 , 1.00, 0.10)

                a_t[0][0] = a_t_original[0][0] + noise_t[0][0]
                a_t[0][1] = a_t_original[0][1] + noise_t[0][1]
                a_t[0][2] = a_t_original[0][2] + noise_t[0][2]

                ob, r_t, done, info, finished = env.step(a_t[0])

                if r_t == "reset" : 
                    done = True
                    r_t = 0

                s_t1 = np.hstack((ob.angle, ob.track, ob.trackPos, ob.speedX, ob.speedY, ob.speedZ, ob.wheelSpinVel/100.0, ob.rpm))
            
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
            
                print("Episode", i, "Step", step, "Action", a_t, "Reward", r_t, "Loss", loss)
            
                # MATLAB
                rewardsPerStep += str(round(r_t, 2)) + " "

                step += 1
                if done:
                    break

                if finished:
                    break

            if np.mod(i, 3) == 0:
                if (train_indicator):
                    print("Now we save model")
                    actor.model.save_weights("actormodel.h5", overwrite=True)
                    with open("actormodel.json", "w") as outfile:
                        json.dump(actor.model.to_json(), outfile)

                    critic.model.save_weights("criticmodel.h5", overwrite=True)
                    with open("criticmodel.json", "w") as outfile:
                        json.dump(critic.model.to_json(), outfile)
         
            # Results file
            endEpisode = time.time()
            print("TOTAL REWARD @ " + str(i) +"-th Episode  : Reward " + str(total_reward))
            print("Total Step: " + str(step))
            print("")

            # Matlab strings
            subtimes += str(round(endEpisode - startEpisode)) + " "
            steps += str(step - lastEpisodeStep) + " "
            rewardsPerEpisode += str(round(total_reward, 2)) + " "
            rewardsPerStep += "]\n"

            lastEpisodeStep = step

            if finished:
                break

        # PUT DATAS IN FORM FOR MATLAB DOC
        end = time.time()
        isGoalReached += "1 " if finished else "0 "
        episodeCount += str(i+1) + " "
        totalTime += str(round(end-start,2)) + " "
        subtimes += "]\n"
        steps += "]\n"
        rewardsPerEpisode += "]\n"

        # PRINT IN MATLAB (each iteration rewrite the whole file)
        file = open("results/" + filename + ".m", "w")
        file.write(isGoalReached + "]\n" + episodeCount + "]\n" + totalTime + "]\n" + subtimes + steps + rewardsPerEpisode + rewardsPerStep)
        file.close();
        env.end()  # This is for shutting down TORCS
        print("Finish.")
        iteration += 1

if __name__ == "__main__":
    playGame()
