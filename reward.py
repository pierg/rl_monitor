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

def reward(obs, obs_pre, action):

	sp = np.array(obs['speedX'])

	#message = str(sp) + ":" + str(obs['angle']) + ":" + str(obs['trackPos']) + ":" + str(obs['damage']) + ":" + str(obs_pre['damage']) + ":" + str(obs_pre['angle'])

	message = json.dumps({"obs": obs, "obs_pre": obs_pre, "action": action}) 

	reward = send_message_to_monitor(message, 1024).replace('n', '').replace('\\', '').replace('\'', '')

	if isinstance(reward, basestring):
		return reward
	else :
		return float(reward)

