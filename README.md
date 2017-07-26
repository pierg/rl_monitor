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
	  Add -n to choose the maximum of episodes you want for each iteration

	- If you want to configure the goal (how many laps to do to finish), you have to modify the XML files in scripts/sources. quickrace.xml for runs with opponents, practice.xml for runs without opponents. See TORCS documentation for more informations (https://arxiv.org/pdf/1304.1672.pdf).
	  
	- Run script/results.sh to get the results in ~/results
	
	- Run script/stop.sh to stop every simulation running on the machine and retrieve the results


The file results.py can be used for other simulators with LARVA monitoring. The comments in the file explain how to use the differents methods, and how to configure the class.

The file utils.py provides a few functions which are designed to quickly adapt a simulator implementing a RL algorithm with a monitor and the result files.

The file model_config.py contains the sizes of the neural networks (retrieved in ActorNetwork.py and CriticNetwork.py). The model_config_opponents.py file contains the sizes for the opponents. It is not used if you launch the agent as is, but the start.sh script uses it when you switch to opponents mode. 

You can plug any reward by naming the file reward.py and using the same name type of function. The one in this folder is using a LARVA monitor, connecting with with larva.py.