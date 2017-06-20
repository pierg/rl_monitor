import gym
from gym import spaces
import numpy as np
# from os import path
import snakeoil3_gym as snakeoil3
import numpy as np
import copy
import collections as col
import os
import time
import json

from larva import *

def reward(obs, obs_pre):

	sp = np.array(obs['speedX'])

	message = str(sp) + ":" + str(obs['angle']) + ":" + str(obs['trackPos']) + ":" + str(obs['damage']) + ":" + str(obs_pre['damage']) + ":" + str(obs_pre['angle'])

	reward = send_message_to_monitor(message).replace('n', '').replace('\\', '').replace('\'', '')

	if reward == "reset":
		return reward
	else :
		return float(reward)

