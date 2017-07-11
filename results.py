import argparse
import json
import time
from larva import *

class Results:

	reward_rounding_value = 2
	time_rounding_value = 2
	obs_values_names = ["trackPos", "speedX", "damage"]
	action_values_names = ["steering", "accel", "brake"]

	def __init__(self, filename):

		self.filename = filename

		# we get a first json because we need the array size and the names of the counters
		jsonMessage = send_message_to_monitor("reset", 8192).replace('\\n', '').replace('\\', '').replace('\'', '')
		monitorValuesJson = json.loads(jsonMessage)
		self.monitorValues = []
		self.monitorCountersNames = monitorValuesJson["names"]

		for i in range(len(self.monitorCountersNames)) : 
			self.monitorValues.append("")

		self.obsValues = dict()

		for i in range(len(self.obs_values_names)) : 
			self.obsValues[self.obs_values_names[i]] = ""

		self.actionValues = dict()

		for i in range(len(self.action_values_names)) : 
			self.actionValues[self.action_values_names[i]] = ""

		self.isGoalReached = "goalReached = ["
		self.totalTime = "totalTime = ["
		self.episodeCount = "episodeCount = ["
		self.subtimes = ""
		self.steps = ""
		self.rewardsPerEpisode = ""
		self.rewardsPerStep = ""
		self.iteration = 0
		self.episode = 0


	def startIterationTime(self):
		self.iteration += 1
		self.episode = 0
		self.subtimes += "subtimes{" + str(self.iteration) + "} = ["
		self.steps += "step{" + str(self.iteration) + "} = ["
		self.rewardsPerEpisode += "rewardsPerEpisode{" + str(self.iteration) + "} = ["
		self.lastEpisodeStep = 0

		self.start = time.time()

		for j in range(len(self.monitorCountersNames)) : 
			name = self.monitorCountersNames[j]
			self.monitorValues[j] += name + "{" + str(self.iteration) + "} = ["


	def startEpisodeTime(self):
		self.episode += 1
		self.startEpisode = time.time()
		self.rewardsPerStep += "rewardsPerStep{" + str(self.iteration) + "}{" + str(self.episode) + "} = ["

		for i in range(len(self.obs_values_names)) : 
			self.obsValues[self.obs_values_names[i]] += self.obs_values_names[i] + "{" + str(self.iteration) + "}{" + str(self.episode) + "} = ["

		for i in range(len(self.action_values_names)) : 
			self.actionValues[self.action_values_names[i]] += self.action_values_names[i] + "{" + str(self.iteration) + "}{" + str(self.episode) + "} = ["


	def stepUpdate(self, reward, obs, action):
		self.rewardsPerStep += str(round(reward, self.reward_rounding_value)) + " "

		for i in range(len(self.obs_values_names)) : 
			self.obsValues[self.obs_values_names[i]] += str(obs[self.obs_values_names[i]]) + " " 

		for i in range(len(self.action_values_names)) : 
			self.actionValues[self.action_values_names[i]] += str(action[i]) + " " 


	def endEpisode(self, step, total_reward):
		endEpisode = time.time()

		jsonResetMessage = send_message_to_monitor("reset", 16384).replace('\\n', '').replace('\\', '').replace('\'', '')
		monitorCounters = json.loads(jsonResetMessage)

		for j in range(len(monitorCounters["values"])) :
			self.monitorValues[j] += str(monitorCounters["values"][j]) + " "
		self.subtimes += str(round(endEpisode - self.startEpisode)) + " "
		self.steps += str(step - self.lastEpisodeStep) + " "
		self.rewardsPerEpisode += str(round(total_reward, self.reward_rounding_value)) + " "
		self.rewardsPerStep += "];\n"

		for i in range(len(self.obs_values_names)) : 
			self.obsValues[self.obs_values_names[i]] += "];\n"

		for i in range(len(self.action_values_names)) : 
			self.actionValues[self.action_values_names[i]] += "];\n"

		self.lastEpisodeStep = step


	def writeInFileUnfinishedIteration(self):

		end = time.time()

		monitorValuesStr = ""
		for j in range(len(self.monitorValues)) : 
			monitorValuesStr += self.monitorValues[j] + "];\n"
		
		resultString =  self.isGoalReached + "0 ];\n" 
		resultString += self.episodeCount + str(self.episode) + " ];\n" 
		resultString += self.totalTime + str(round(end-self.start, self.time_rounding_value)) + " ];\n" 
		resultString += self.subtimes  + "];\n"
		resultString += monitorValuesStr
		resultString += self.steps + "];\n"
		resultString += self.rewardsPerEpisode + "];\n"
		resultString += self.rewardsPerStep + "];\n"
		for i in range(len(self.obs_values_names)) : 
			resultString += self.obsValues[self.obs_values_names[i]] + "];\n"

		for i in range(len(self.action_values_names)) : 
			resultString += self.actionValues[self.action_values_names[i]] + "];\n"


		# PRINT IN MATLAB (each iteration rewrite the whole file)
		file = open("results/" + self.filename + "/results.m", "w")
		file.write(resultString)
		file.close();


	def writeInFile(self, finished):

		end = time.time()
		self.isGoalReached += "1 " if finished else "0 "
		self.episodeCount += str(self.episode) + " "
		self.totalTime += str(round(end-self.start, self.time_rounding_value)) + " "
		self.subtimes += "];\n"
		self.steps += "];\n"
		self.rewardsPerEpisode += "];\n"

		monitorValuesStr = ""
		for j in range(len(self.monitorValues)) : 
			self.monitorValues[j] += "];\n"
			monitorValuesStr += self.monitorValues[j]
		
		resultString =  self.isGoalReached + "];\n" 
		resultString += self.episodeCount + "];\n" 
		resultString += self.totalTime + "];\n" 
		resultString += self.subtimes 
		resultString += monitorValuesStr
		resultString += self.steps 
		resultString += self.rewardsPerEpisode 
		resultString += self.rewardsPerStep
		for i in range(len(self.obs_values_names)) : 
			resultString += self.obsValues[self.obs_values_names[i]]

		for i in range(len(self.action_values_names)) : 
			resultString += self.actionValues[self.action_values_names[i]]

		# PRINT IN MATLAB (each iteration rewrite the whole file)
		file = open("results/" + self.filename + "/results.m", "w")
		file.write(resultString)
		file.close();
