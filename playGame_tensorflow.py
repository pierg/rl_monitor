import os, sys, re
import numpy as np
np.random.seed(1337)

from gym_torcs import TorcsEnv
import random
import argparse
import tensorflow as tf
from my_config import *

from ddpg import *
from reward import reward
from larva import *
from utils import *
from results_bak import Results
import gc
gc.enable()

import timeit
import time
import math

print( is_training )
print( total_explore )
print( max_eps )
print( max_steps_eps )
print( epsilon_start )
print( reward_name )

def playGame(train_indicator=is_training):    #1 means Train, 0 means simply Run

    # -n number of episodes
    # -r name of the reward function
    # -x time of the simulation (in hour)
    # -k should we keep the model or not (boolean)
    monitor, keepModel, simTime, maxEpisodes = getArgs()

    action_dim = 3  #Steering/Acceleration/Brake
    state_dim = 29  #of sensors input
    env_name = 'Torcs_Env'

    filename = "results" + monitor + "_" + time.strftime("%d_%m_%Y_%H%M%S")
    if not os.path.exists("results"):
        os.mkdir( "results", 0755 );
    os.mkdir( "results/" + filename, 0755 );
    results = Results(filename)
    
    EXPLORE = total_explore
    if maxEpisodes > 0:
        episode_count = maxEpisodes
    else:
        episode_count = max_eps

    max_steps = max_steps_eps

    finishedSimulation = False

    startSim = time.time()
    if not os.path.exists("saved_networks"):
        os.mkdir( "saved_networks", 0755 );
    for f in os.listdir("saved_networks"):
        os.remove(os.path.join("saved_networks", f))

    agent = DDPG(env_name, state_dim, action_dim)

    while True :

        # Generate a Torcs environment
        vision = False
        env = TorcsEnv(reward=reward, vision=vision, throttle=True,gear_change=False)

        epsilon = epsilon_start
        done = False
        
        step = 0
        best_reward = -100000


        results.startIterationTime()

        print("TORCS Experiment Start.")
        for i in range(episode_count):
            ##Occasional Testing
            if (( np.mod(i, 10) == 0 ) and (i>20)):
                train_indicator= 0
            else:
                train_indicator=is_training

            #relaunch TORCS every 3 episode because of the memory leak error
            if np.mod(i, 3) == 0:
                ob = env.reset(relaunch=True)   
            else:
                ob = env.reset()
                
            # Early episode annealing for out of track driving and small progress
            # During early training phases - out of track and slow driving is allowed as humans do ( Margin of error )
            # As one learns to drive the constraints become stricter
            
            random_number = random.random()
            eps_early = max(epsilon,0.10)
            if (random_number < (1.0-eps_early)) and (train_indicator == 1):
                early_stop = 1
            else: 
                early_stop = 0
            print("Episode : " + str(i) + " Replay Buffer " + str(agent.replay_buffer.count()) + ' Early Stopping: ' + str(early_stop) +  ' Epsilon: ' + str(eps_early) +  ' RN: ' + str(random_number)  )

            #Initializing the first state
            s_t = np.hstack((ob.angle, ob.track, ob.trackPos, ob.speedX, ob.speedY, ob.speedZ, ob.wheelSpinVel/100.0, ob.rpm))
            
            #Counting the total reward and total steps in the current episode
            total_reward = 0.
            step_eps = 0.

            results.startEpisodeTime()
            
            # Episode
            for j in range(max_steps):
                
                #Take noisy actions during training
                if (train_indicator):
                    epsilon -= 1.0 / EXPLORE
                    epsilon = max(epsilon, 0.1)
                    a_t = agent.noise_action(s_t,epsilon)
                else:
                    a_t = agent.action(s_t)
                    
                #ob, r_t, done, info = env.step(a_t[0],early_stop)
                ob, r_t, done, finished, obs, info = env.step(a_t,early_stop)

                if isinstance(r_t, basestring) : 
                    done = True
                    r_t = 0

                s_t1 = np.hstack((ob.angle, ob.track, ob.trackPos, ob.speedX, ob.speedY, ob.speedZ, ob.wheelSpinVel/100.0, ob.rpm))
                
                #Add to replay buffer only if training (Is it necessay - don't think so)
                if (train_indicator):
                    agent.perceive(s_t,a_t,r_t,s_t1,done)
                    
                #Cheking for nan rewards
                if ( math.isnan( r_t )):
                    r_t = 0.0
                    for bad_r in range( 50 ):
                        print( 'Bad Reward Found' )

                total_reward += r_t
                s_t = s_t1

                results.stepUpdate(r_t, obs, a_t)

                #Displaying progress every 15 steps.
                if ( (np.mod(step,15)==0) ):        
                    results.writeInFileUnfinishedIteration()
                    print("Episode", i, "Step", step_eps,"Epsilon", epsilon , "Action", a_t, "Reward", r_t )

                step += 1
                step_eps += 1

                finishedSimulation = isSimulationTimeUp(startSim, simTime)

                if done or finished or finishedSimulation:
                    break
                    
            #Saving the best model.
            if total_reward >= best_reward :
                if (train_indicator==1):
                    print("Now we save model with reward " + str( total_reward) + " previous best reward was " + str(best_reward))
                    best_reward = total_reward
                    agent.saveNetwork()       
                    
            print("TOTAL REWARD @ " + str(i) +"-th Episode  : Reward " + str(total_reward))
            print("Total Step: " + str(step))
            print("")

            results.endEpisode(step, total_reward)

            if finished :
                break

        results.writeInFile(finished)

        env.end()  # This is for shutting down TORCS
        print("Finish.")

if __name__ == "__main__":
    playGame()

