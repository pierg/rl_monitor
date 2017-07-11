import json

from larva import *

def reward(obs, obs_pre, action):


	try:
		message = json.dumps({"obs": obs, "obs_pre": obs_pre, "action": action}) 
		reward = send_message_to_monitor(message, 1024).replace('n', '').replace('\\', '').replace('\'', '')
		
	except TypeError:
		reward = 0
		print "TypeError while sending JSON to monitor"

	try:
		return float(reward)
	except ValueError:
		return reward

