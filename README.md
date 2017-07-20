# rl_monitor
Combining Reinforcement Learning with Runtime Monitoring using Gym Torcs and Keras
The simulation will restart anew everytime it reaches the goal.

To start a simulation on docker : 

	- Put your UPPAAL model in the folder monitor/uppaal_models/. It should be reward_x.xml.
	
	- Run the script script/start.sh as following : ./start.sh -m reward_x 
	  Add -d option to run in background
	  Add -o to use the original reward function
	  Add -t x to choose the duration of the simulation, x in hour(s)
	  Add -e to add opponents
	  
	- Run script/results.sh to get the results in ~/results
	
	- Run script/stop.sh to stop every simulation running on the machine and retrieve the results


The file results.py can be used for other simulators with LARVA monitoring. The comments in the file explain how to use the differents methods, and how to configure the class.

The file utils.py provides a few functions which are designed to quickly adapt a simulator implementing a RL algorithm with a monitor and the result files.

You can plug any reward by naming the file reward.py and using the same name type of function. The one in this folder is using a LARVA monitor, with larva.py.