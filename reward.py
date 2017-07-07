import json

from larva import *

def reward(obs, obs_pre, action):


	message = json.dumps({"obs": obs, "obs_pre": obs_pre, "action": action}) 

	reward = send_message_to_monitor(message, 1024).replace('n', '').replace('\\', '').replace('\'', '')
		
	try:
		return float(reward)
	except ValueError:
		return reward

