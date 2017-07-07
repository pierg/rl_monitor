# rl_monitor
Combining Reinforcement Learning with Runtime Monitoring using Gym Torcs and Keras

To start a simulation on docker : 

	- Put your UPPAAL model in the folder monitor/uppaal_models/. It should be reward_x.xml.
	
	- Run the script script/start.sh as following : ./start.sh -m reward_x 
	  Add -d option to run in background
	  Add -o to use the original reward function
	  Add -t x to choose the duration of the simulation, x in hour(s)
	  
	- Run script/results.sh to get the results in /results
	
	- Run script/stop.sh to stop every simulation running on the machine and retrieve the results
