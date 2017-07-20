import argparse
import json
import time
from larva import *

# Get arguments from command line. If the simulator already use these parameters, you have to change 
# them or adapt the simulator. (for exemple with TORCS, modify snakeoil3)
def getArgs():
	parser = argparse.ArgumentParser()
	parser.add_argument("-n", type=int, help="number of episodes")
	parser.add_argument("-r", type=str, help="name of the monitor")
	parser.add_argument("-x", type=float, help="time of the simulation (in hour)")
	parser.add_argument("-k", type=str, help="keep the models")
	parser.add_argument("-a", action='store_true', help="add opponents")


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

	if args.n > 0 :
		episode_count = args.n
	else :
		episode_count = 2000

	opponents = args.a

	return monitor, keepModel, simTime, episode_count, opponents


def str2bool(v):
	if v is None:
		return False
	if v.lower() in ('yes', 'true', 't', 'y', '1'):
		return True
	elif v.lower() in ('no', 'false', 'f', 'n', '0'):
		return False
	else:
		raise argparse.ArgumentTypeError('Boolean value expected.')

# Check if the simulation should stop. (work with time limit)
def isSimulationTimeUp(startSim, simTime):
	statusSim = time.time()
	simTotalTime = statusSim - startSim 

	if simTime != -1 and simTotalTime >= simTime * 3600 :
		return True

	return False