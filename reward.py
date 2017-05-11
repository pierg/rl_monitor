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

from larva import *

def reward(obs, obs_pre):

	sp = np.array(obs['speedX'])

	progress = sp*np.cos(obs['angle']) - np.abs(sp*np.sin(obs['angle'])) - sp * np.abs(obs['trackPos'])
	reward = progress

	# collision detection
	if obs['damage'] - obs_pre['damage'] > 0:
		reward = -1


	# Talk to LARVA
	print "[LARVA ANSWER]: " + send_message_to_monitor("test")

	return reward

