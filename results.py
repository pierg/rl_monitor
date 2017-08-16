import argparse
import json
import time
import os, sys
from shutil import copy
from larva import *

class Results:

	reward_rounding_value = 2
	time_rounding_value = 2
	obs_values_names = ["trackPos", "speedX", "damage"]
	action_values_names = ["steering", "accel", "brake"]

	def __init__(self, filename):

		self.filename = filename

		# we get a first json because we need the array size and the names of the counters
		jsonCounters = send_message_to_monitor("reset", 8192).replace('\\n', '').replace('\\', '').replace('\'', '')
		jsonRewards = send_message_to_monitor("rewards", 8192).replace('\\n', '').replace('\\', '').replace('\'', '')
		monitorCountersJson = json.loads(jsonCounters)
		monitorRewardsJson = json.loads(jsonRewards)
		self.monitorCounters = []
		self.monitorRewards = []
		self.monitorCountersNames = monitorCountersJson["names"]
		self.monitorRewardsNames = monitorRewardsJson["names"]

		for i in range(len(self.monitorCountersNames)) : 
			self.monitorCounters.append("")

		for i in range(len(self.monitorRewardsNames)) : 
			self.monitorRewards.append("")

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

		os.mkdir( "results/" + filename, 0755 );
		copy("results/src/SCRIPT_plot_all_iterations.m", "results/" + filename + "/SCRIPT_plot_all_iterations.m")
		copy("results/src/SCRIPT_plot_results.m", "results/" + filename + "/SCRIPT_plot_results.m")
		copy("results/src/SCRIPT_counters.m", "results/" + filename + "/SCRIPT_counters.m")
		copy("results/src/SCRIPT_plot_torcs_values.m", "results/" + filename + "/SCRIPT_plot_torcs_values.m")
		copy("results/src/SCRIPT_plot_all_rewards.m", "results/" + filename + "/SCRIPT_plot_all_rewards.m")
		copy("results/src/SCRIPT_plot_all_torcs_values.m", "results/" + filename + "/SCRIPT_plot_all_torcs_values.m")


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
			self.monitorCounters[j] += name + "{" + str(self.iteration) + "} = ["



	def startEpisodeTime(self):
		self.episode += 1
		self.startEpisode = time.time()
		self.rewardsPerStep += "rewardsPerStep{" + str(self.iteration) + "}{" + str(self.episode) + "} = ["

		for i in range(len(self.obs_values_names)) : 
			self.obsValues[self.obs_values_names[i]] += self.obs_values_names[i] + "{" + str(self.iteration) + "}{" + str(self.episode) + "} = ["

		for i in range(len(self.action_values_names)) : 
			self.actionValues[self.action_values_names[i]] += self.action_values_names[i] + "{" + str(self.iteration) + "}{" + str(self.episode) + "} = ["

		for j in range(len(self.monitorRewardsNames)) : 
			name = self.monitorRewardsNames[j]
			self.monitorRewards[j] += name + "{" + str(self.iteration) + "}{" + str(self.episode) +  "} = ["


	def stepUpdate(self, reward, obs, action):
		jsonRewards = send_message_to_monitor("rewards", 8192).replace('\\n', '').replace('\\', '').replace('\'', '')
		monitorRewardsJson = json.loads(jsonRewards)

		for j in range(len(monitorRewardsJson["values"])) :
			self.monitorRewards[j] += str(monitorRewardsJson["values"][j]) + " "

		self.rewardsPerStep += str(round(reward, self.reward_rounding_value)) + " "

		for i in range(len(self.obs_values_names)) : 
			self.obsValues[self.obs_values_names[i]] += str(round(obs[self.obs_values_names[i]],2)) + " " 

		for i in range(len(self.action_values_names)): 
			self.actionValues[self.action_values_names[i]] += str(round(action[i], 2)) + " " 


	def endEpisode(self, step, total_reward):
		endEpisode = time.time()

		jsonResetMessage = send_message_to_monitor("reset", 16384).replace('\\n', '').replace('\\', '').replace('\'', '')
		monitorCounters = json.loads(jsonResetMessage)

		for j in range(len(monitorCounters["values"])) :
			self.monitorCounters[j] += str(monitorCounters["values"][j]) + " "
		self.subtimes += str(round(endEpisode - self.startEpisode)) + " "
		self.steps += str(step - self.lastEpisodeStep) + " "
		self.rewardsPerEpisode += str(round(total_reward, self.reward_rounding_value)) + " "
		self.rewardsPerStep += "];\n"

		for i in range(len(self.obs_values_names)) : 
			self.obsValues[self.obs_values_names[i]] += "];\n"

		for i in range(len(self.action_values_names)) : 
			self.actionValues[self.action_values_names[i]] += "];\n"

		for j in range(len(self.monitorRewards)) : 
			self.monitorRewards[j] += "];\n"

		self.lastEpisodeStep = step


	def writeInFileUnfinishedIteration(self):

		end = time.time()

		monitorCountersStr = ""
		for j in range(len(self.monitorCounters)) : 
			monitorCountersStr += self.monitorCounters[j] + "];\n"
		
		signalsString = ""

		resultString =  self.isGoalReached + "0 ];\n" 
		resultString += self.episodeCount + str(self.episode) + " ];\n" 
		resultString += self.totalTime + str(round(end-self.start, self.time_rounding_value)) + " ];\n" 
		resultString += self.subtimes  + "];\n"

		for i in range(len(self.obs_values_names)) : 
			signalsString += self.obsValues[self.obs_values_names[i]] + "];\n"

		for i in range(len(self.action_values_names)) : 
			signalsString += self.actionValues[self.action_values_names[i]] + "];\n"

		# PRINT IN MATLAB (each iteration rewrite the whole file)
		file = open("results/" + self.filename + "/DATA_results.m", "w")
		file.write(resultString)
		file.close();

		# PRINT IN MATLAB (each iteration rewrite the whole file)
		file = open("results/" + self.filename + "/DATA_monitorValues.m", "w")
		file.write(monitorCountersStr)
		file.close();

		file = open("results/" + self.filename + "/DATA_steps.m", "w")
		file.write(self.steps + "];\n")
		file.close();

		file = open("results/" + self.filename + "/DATA_rewards.m", "w")
		file.write(self.rewardsPerEpisode + "];\n" + self.rewardsPerStep + "];\n")
		file.close();

		file = open("results/" + self.filename + "/DATA_signals.m", "w")
		file.write(signalsString)
		file.close();

		rewardsString = ""
		for i in range(len(self.monitorRewards)) : 
			rewardsString += self.monitorRewards[i] + "];\n"
			file = open("results/" + self.filename + "/DATA_" + self.monitorRewardsNames[i] + ".m", "w")
			file.write(rewardsString)
			file.close()
			rewardsString = ""


	def writeInFile(self, finished):

		end = time.time()
		self.isGoalReached += "1 " if finished else "0 "
		self.episodeCount += str(self.episode) + " "
		self.totalTime += str(round(end-self.start, self.time_rounding_value)) + " "
		self.subtimes += "];\n"
		self.steps += "];\n"
		self.rewardsPerEpisode += "];\n"

		monitorCountersStr = ""
		for j in range(len(self.monitorCounters)) : 
			self.monitorCounters[j] += "];\n"
			monitorCountersStr += self.monitorCounters[j]

		signalsString = ""
		
		resultString =  self.isGoalReached + "];\n" 
		resultString += self.episodeCount + "];\n" 
		resultString += self.totalTime + "];\n" 
		resultString += self.subtimes 
		
		for i in range(len(self.obs_values_names)) : 
			resultString += self.obsValues[self.obs_values_names[i]]

		for i in range(len(self.action_values_names)) : 
			resultString += self.actionValues[self.action_values_names[i]]

			
		# PRINT IN MATLAB (each iteration rewrite the whole file)
		file = open("results/" + self.filename + "/DATA_results.m", "w")
		file.write(resultString)
		file.close();

		# PRINT IN MATLAB (each iteration rewrite the whole file)
		file = open("results/" + self.filename + "/DATA_monitorValues.m", "w")
		file.write(monitorCountersStr)
		file.close();

		file = open("results/" + self.filename + "/DATA_steps.m", "w")
		file.write(self.steps)
		file.close();

		file = open("results/" + self.filename + "/DATA_rewards.m", "w")
		file.write(self.rewardsPerEpisode + self.rewardsPerStep)
		file.close();

		file = open("results/" + self.filename + "/DATA_signals.m", "w")
		file.write(signalsString)
		file.close();

		rewardsString = ""
		for i in range(len(self.monitorRewards)) : 
			rewardsString += self.monitorRewards[i]
			file = open("results/" + self.filename + "/DATA_" + self.monitorRewardsNames[i] + ".m", "w")
			file.write(rewardsString)
			file.close()
			rewardsString = ""
