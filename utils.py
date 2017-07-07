import argparse
import json
import time
from larva import *

def getArgs():
	parser = argparse.ArgumentParser()
	parser.add_argument("-n", type=int, help="number of episodes")
	parser.add_argument("-r", type=str, help="name of the monitor")
	parser.add_argument("-x", type=float, help="time of the simulation (in hour)")
	parser.add_argument("-k", type=str, help="keep the models")

	args = parser.parse_args()

	if args.r > 0 :
		monitor = "_" + args.r
	else :
		monitor =  ""

	if str2bool(args.k) :
		keepModel = True
	else :
		keepModel = False

	if args.x > 0 :
		simTime = args.x
	else :
		simTime = -1

	return monitor, keepModel, simTime, args.n

def initResultFileValues():
	isGoalReached = "goalReached = ["
	totalTime = "totalTime = ["
	episodeCount = "episodeCount = ["
	subtimes = ""
	steps = ""
	rewardsPerEpisode = ""
	rewardsPerStep = ""

	return isGoalReached, totalTime, episodeCount, subtimes, steps, rewardsPerEpisode, rewardsPerStep

# init the array which will contains all the state counters
def initMonitorCounterValues():
	# we get a first json because we need the array size
	jsonMessage = send_message_to_monitor("reset", 8192).replace('\\n', '').replace('\\', '').replace('\'', '')
	monitorValuesJson = json.loads(jsonMessage)
	monitorValues = []

	for i in range(len(monitorValuesJson["names"])) : 
		monitorValues.append("")

	return monitorValues, monitorValuesJson["names"]


def str2bool(v):
	if v is None:
		return False
	if v.lower() in ('yes', 'true', 't', 'y', '1'):
		return True
	elif v.lower() in ('no', 'false', 'f', 'n', '0'):
		return False
	else:
		raise argparse.ArgumentTypeError('Boolean value expected.')

def isSimulationTimeUp(startSim, simTime):
	statusSim = time.time()
	simTotalTime = statusSim - startSim 

	if simTime != -1 and simTotalTime >= simTime * 3600 :
		return True

	return False

def writeMatlabResults(isGoalReached, episodeCount, totalTime, subtimes, steps, rewardsPerEpisode, monitorValues, finished, start, filename, i, rewardsPerStep):
	# PUT DATAS IN FORM FOR MATLAB DOC
    end = time.time()
    isGoalReached += "1 " if finished else "0 "
    episodeCount += str(i+1) + " "
    totalTime += str(round(end-start,2)) + " "
    subtimes += "];\n"
    steps += "];\n"
    rewardsPerEpisode += "];\n"
    monitorValuesStr = ""
    for j in range(len(monitorValues)) : 
        monitorValuesStr += monitorValues[j] + "];\n"

    # PRINT IN MATLAB (each iteration rewrite the whole file)
    file = open("results/" + filename + "/results.m", "w")
    file.write(isGoalReached + "];\n" + episodeCount + "];\n" + totalTime + "];\n" + subtimes + monitorValuesStr+ steps + rewardsPerEpisode + rewardsPerStep)
    file.close();