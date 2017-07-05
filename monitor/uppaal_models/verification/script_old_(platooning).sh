		#!/bin/bash

		### Configuration

		## STARTING_TIME
		ST_FROM=3
		ST_TO=10

		## LEAVING_TIME (AFTER THE STARTING TIME)
		LT_FROM=30
		LT_TO=200

		TIMEFORMAT=%R

		Write_global(){
		if [[ $1 == *"Formula is satisfied."* ]]
		then
		    # code if found
			if [ $N -eq "2" ] 
			then
				echo "                                                                 1                                                                   $4" >> Report.txt
				echo "OK!"
				echo ""
			fi
			if [ $N -eq "3" ] 
			then
				echo "                                                                        1                                                            $4" >> Report.txt
				echo "OK!"
				echo ""
			fi
			if [ $N -eq "4" ] 
			then	
				echo "                                                                               1                                                     $4" >> Report.txt
				echo "OK!"
				echo ""
			fi
			if [ $N -eq "5" ] 
			then
				echo "                                                                                      1                                              $4" >> Report.txt
				echo "OK!"
				echo ""
			fi
			if [ $N -eq "6" ] 
			then
				echo "                                                                                             1                                       $4" >> Report.txt
				echo "OK!"
				echo ""
			fi
			if [ $N -eq "7" ] 
			then	
				echo "                                                                                                    1                                $4" >> Report.txt
				echo "OK!"
				echo ""
			fi
			if [ $N -eq "8" ] 
			then
				echo "                                                                                                           1                         $4" >> Report.txt
				echo "OK!"
				echo ""
			fi
			if [ $N -eq "9" ] 
			then
				echo "                                                                                                                  1                  $4" >> Report.txt
				echo "OK!"
				echo ""
			fi
		else
		    # code if not found
			if [ $N -eq "2" ] 
			then
		                                                                                      N=2    N=3    N=4    N=5    N=6    N=7    N=8    N=9    N=10    Time elapsed
				echo "                                                                 0                                                                   $4" >> Report.txt
				echo $3
				echo "NOT verified! Model_$2_not_satisfied.xml generated."
				echo ""
				cat Generated_model_$N.xml >>  "Model_$2_not_satisfied_i"$W"_N"$N".xml"
			fi
			if [ $N -eq "3" ] 
			then
				echo "                                                                        0                                                            $4" >> Report.txt
				echo $3
				echo "NOT verified! Model_$2_not_satisfied.xml generated."
				echo "Time elasped: $4"
				echo ""
				cat Generated_model_$N.xml >>  "Model_$2_not_satisfied_i"$W"_N"$N".xml"
			fi
			if [ $N -eq "4" ] 
			then	
				echo "                                                                               0                                                     $4" >> Report.txt
				echo $3
				echo "NOT verified! Model_$2_not_satisfied.xml generated."
				echo "Time elasped: $4"
				echo ""
				cat Generated_model_$N.xml >>  "Model_$2_not_satisfied_i"$W"_N"$N".xml"
			fi
			if [ $N -eq "5" ] 
			then
				echo "                                                                                      0                                              $4" >> Report.txt
				echo $3
				echo "NOT verified! Model_$2_not_satisfied.xml generated."
				echo "Time elasped: $4"
				echo ""
				cat Generated_model_$N.xml >>  "Model_$2_not_satisfied_i"$W"_N"$N".xml"
			fi
			if [ $N -eq "6" ] 
			then
				echo "                                                                                             0                                       $4" >> Report.txt
				echo $3
				echo "NOT verified! Model_$2_not_satisfied.xml generated."
				echo "Time elasped: $4"
				echo ""
				cat Generated_model_$N.xml >>  "Model_$2_not_satisfied_i"$W"_N"$N".xml"
			fi
			if [ $N -eq "7" ] 
			then	
				echo "                                                                                                    0                                $4" >> Report.txt
				echo $3
				echo "NOT verified! Model_$2_not_satisfied.xml generated."
				echo "Time elasped: $4"
				echo ""
				cat Generated_model_$N.xml >>  "Model_$2_not_satisfied_i"$W"_N"$N".xml"
			fi
			if [ $N -eq "8" ] 
			then
				echo "                                                                                                           0                         $4" >> Report.txt
				echo $3
				echo "NOT verified! Model $2_not_satisfied.xml generated."
				echo "Time elasped: $4"
				echo ""
				cat Generated_model_$N.xml >>  "Model_$2_not_satisfied_i"$W"_N"$N".xml"
			fi
			if [ $N -eq "9" ] 
			then
				echo "                                                                                                                  0                  $4" >> Report.txt
				echo $3
				echo "NOT verified! Model_$2_not_satisfied.xml generated."
				echo "Time elasped: $4"
				echo ""
				cat Generated_model_$N.xml >>  "Model_$2_not_satisfied_i"$W"_N"$N".xml"
				
			fi
		fi
		}


		if [[ $# -eq 0 ]] ; then
		    echo 'No argument supplied; Parameters needed are:
		    		- int: starting number of vehicles (ex. 2)
		    		- int: finishing number of vehicles (ex. 5)
		    		- int: number of iterations for each scenario (ex. 50)'
		    exit 1
		fi


		echo "" > Log.txt
		echo "" > Report.txt
		echo "clear" > Matlab.txt
		echo "" > Matlab2.txt

		# Iterations
		for (( W = 0 ; W < $3 ; W += 1 ))
		do

			iteration=$((W+1))
				echo "________________________________________________________________________________________________________________________________________________" >> Report.txt


			echo "        Iteration $iteration                                            N=2    N=3    N=4    N=5    N=6    N=7    N=8    N=9    N=10    Time elapsed" >> Report.txt

				echo "________________________________________________________________________________________________________________________________________________" >> Report.txt
				echo "" >> Report.txt



		echo ""
		echo "iteration number : $W"

		printf "ITER_$iteration = [" >> Matlab.txt
		printf "TOTAL(:,:,$iteration) = [" >> Matlab2.txt


		N_first=$1
		N_last=$2
		# Number of Vehicles
		for (( N = $N_first ; N <= $N_last ; N += 1 ))
		do
		echo ""
		echo "number of vehicles : $N"
		echo ""
		#N=7
		(( K=2*($N-1) ))
		( 
		echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>" 
		echo "<!DOCTYPE nta PUBLIC '-//Uppaal Team//DTD Flat System 1.1//EN' 'http://www.it.uu.se/research/group/darts/uppaal/flat-1_2.dtd'>" 
		echo "<nta>" 
		echo "	<declaration>// Place global declarations here." 
		echo "clock time;" 
		echo "bool b=0;" 
		echo "const int CHANGE_LEADER_TIME = 4;" 
		echo "const int JOINING_TIME = 4;" 
		echo "const int PROPAGATE_TIME = 1;" 
		echo "const int BOUND = 1;" 
		echo "const int GAP = 10;"
		echo "const int N = $N ;            // Number of vehicles." 
		echo "typedef int[0,N-1] id_v;    // Vehicles IDs." 
		echo "const int ST[id_v] = {"
		) > Generated_model_$N.xml
		echo "ST[id_v]">>Log.txt 
		for (( p = 1 ; p <= $N ; p += 1 )) ; do
				StarT=$(( ($RANDOM % $ST_TO) + $ST_FROM ))
				if [ $p -eq $N ] 
				then 
					echo $StarT>> Generated_model_$N.xml 
					echo $StarT>> Log.txt 
				fi
				if [ $p -lt $N ]  
				then 
					echo $StarT,>> Generated_model_$N.xml 
					echo $StarT,>> Log.txt 
				fi
		done
		(
		echo "};         // Starting time for each vehicle"
		echo "const int LT[id_v] = {"
		) >> Generated_model_$N.xml
		echo "LT[id_v]">>Log.txt 
		for (( p = 1 ; p <= $N ; p += 1 )) ; do
				LeavingT=$(( $StarT + ($RANDOM % $LT_TO) + $LT_FROM ))	
				if [ $p -eq $N ] 
				then 
					echo $LeavingT>> Generated_model_$N.xml 
					echo $LeavingT>> Log.txt 
				fi
				if [ $p -lt $N ]  
				then 
					echo $LeavingT,>> Generated_model_$N.xml
					echo $LeavingT,>> Log.txt	
				fi
		done
		(
		echo "};    // Leaving time for each vehicle" 
		echo "const int S[id_v] = {"
		) >> Generated_model_$N.xml
		echo "S[id_v]">>Log.txt 
		SI=-1
		index=0
		for (( p = 1 ; p <= $N ; p += 1 )) ; do
				SafetyIndex=$(( ($RANDOM % 50) +50))	# from 50 to 100
				if [ $p -eq $N ] 
				then 
					echo $SafetyIndex>> Generated_model_$N.xml 
					echo $SafetyIndex>> Log.txt 
				fi
				if [ $p -lt $N ]  
				then 
					echo $SafetyIndex,>> Generated_model_$N.xml
					echo $SafetyIndex,>> Log.txt			
				fi
				if [ $SI -le $SafetyIndex ] && [ $SI -ge 0 ]; then
					(( index = $p -1 ))
					SI=$SafetyIndex
				fi
				if [ $SI -lt 0 ]
				then
					SI=$SafetyIndex
				fi
			#echo $index "index"
			#echo $SI "SI"
		done
		(
		echo " };    // Safety index for each vehicle" 
		echo "// Leaders only. Once a vehicle becomes leader, it agrees its parameters with the followers." 
		echo "const int SD[id_v] = {"
		) >> Generated_model_$N.xml
		for (( p = 1 ; p <= $N ; p += 1 )) ; do
				SafetyDistance=$(( ($RANDOM % 45) + 5 ))
				if [ $p -eq $N ] 
				then 
					echo $SafetyDistance>> Generated_model_$N.xml 
				fi
				if [ $p -lt $N ]  
				then 
					echo $SafetyDistance,>> Generated_model_$N.xml 
				fi
		done
		(
		echo "};    // Safety distance to be agreed"
		echo "const int SP[id_v] = {"
		) >> Generated_model_$N.xml
		for (( p = 1 ; p <= $N ; p += 1 )) ; do
				CruiseSpeed=$(( ($RANDOM % 160) + 20 ))
				if [ $p -eq $N ] 
				then 
					echo $CruiseSpeed>> Generated_model_$N.xml 
				fi
				if [ $p -lt $N ]  
				then 
					echo $CruiseSpeed,>> Generated_model_$N.xml 
				fi
		done
		(
		echo "}; // Cruise speed" 
		echo "const int M = 5;"
		echo "const int MP[M] = {"
		) >> Generated_model_$N.xml
		M=5
		echo "MP[M]">> Log.txt	
		for (( p = 1 ; p <= $M ; p += 1 )) ; do
				MessProp=$(( ($RANDOM % 45) +15 ))
				if [ $p -eq $M ] 
				then 
					echo $MessProp>> Generated_model_$N.xml 
					echo $MessProp>> Log.txt			
				fi
				if [ $p -lt $M ]  
				then 
					echo $MessProp,>> Generated_model_$N.xml
					echo $MessProp,>> Log.txt			
				fi
		done
		( 
		echo "};       // \"Random times when a message has to be propagated from the leader" 
		echo "const int CL[M] = {"
		) >> Generated_model_$N.xml
		for (( p = 1 ; p <= $M ; p += 1 )) ; do
				ChangeLane=$(( ($RANDOM % 45) +15 ))
				if [ $p -eq $M ] 
				then 
					echo $ChangeLane>> Generated_model_$N.xml 
				fi
				if [ $p -lt $M ]  
				then 
					echo $ChangeLane,>> Generated_model_$N.xml 
				fi
		done
		( 
		echo "};     // \"Random\" times when change_lane command is fired" 
		echo "const int HE[M] = {"
		) >> Generated_model_$N.xml
		for (( p = 1 ; p <= $M ; p += 1 )) ; do
				HazardEvent=$(( ($RANDOM % 60) +1 ))
				if [ $p -eq $M ] 
				then 
					echo $HazardEvent>> Generated_model_$N.xml 
				fi
				if [ $p -lt $M ]  
				then 
					echo $HazardEvent,>> Generated_model_$N.xml 
				fi
		done
		( 
		echo "};     // \"Random\" times when an hazard happens" 
		echo "urgent chan discovery_1[N];" 
		echo "urgent chan discovery_2[N];" 
		echo "chan negotiate[N];" 
		echo "urgent chan followme[N];" 
		echo "urgent chan followyou[N];" 
		echo "urgent chan add_follower[N][N];" 
		echo "chan leading[N];" 
		echo "chan synch;" 
		echo "chan follower_leaving[N][N];" 
		echo "urgent chan leader_leaving[N];" 
		echo "urgent chan new_leader[N][N];" 
		echo "chan message_leader;" 
		echo "chan message[N];" 
		echo "chan propagate_leader;" 
		echo "urgent chan propagate[N];" 
		echo "chan new_leader_ack[N];" 
		echo "chan propagate_ack[N];" 
		echo "chan follower_leaving_ack[N];" 
		echo "urgent chan new_follower[N];" 
		echo "broadcast chan hazard;" 
		echo "broadcast chan safe;" 
		echo "broadcast chan lane_problem;" 
		echo "// Followers queue Global" 
		echo "int followers_G [N-1];" 
		echo "int followers_length_G; // length of the queue" 
		echo "// Propagate Followers queue Global" 
		echo "int pfollowers_G [N-1];" 
		echo "int pfollowers_length_G; // length of the queue" 
		echo "int [1,4] lane_number_global;" 
		echo "int total_left = 0;" 
		echo "int platoons = 0;" 
		echo "bool reset_done = false;"
		echo "struct" 
		echo "{" 
		echo "    id_v sender;" 
		echo "} reqG;" 
		echo "int changing = 0; // Semaphore, number of followers changing leader + old leader" 
		echo "int followers_leaving[N];</declaration>" 
		echo "	<template>" 
		echo "		<name x=\"9\" y=\"9\">Vehicle</name>" 
		echo "		<parameter>const id_v id</parameter>" 
		echo "		<declaration>clock t;" 
		echo "clock x;" 
		echo "int leader;" 
		echo "int followers[N-1];" 
		echo "int lane_number;" 
		echo "struct" 
		echo "{" 
		echo "    id_v sender;" 
		echo "} req;" 
		echo "int [0,N-1] followers_length;" 
		echo "int followers_app;" 
		echo "// Leader parameters" 
		echo "int safety_distance;" 
		echo "int cruise_speed;" 
		echo "id_v id_other;" 
		echo "void reset_global()" 
		echo "{" 
		echo "	  if(reset_done == false)"
		echo "    {	int i;" 
		echo "    	for (i=0; i&lt;N-1; i++)" 
		echo "    	{" 
		echo "        	followers[i] = -1;" 
		echo "        	followers_G[i] = -1;" 
		echo "        	pfollowers_G[i] = -1;" 
		echo "    	}" 
		echo "    	leader = -1;" 
		echo "    	followers_length = 0;" 
		echo "    	followers_length_G = 0;" 
		echo "    	lane_number_global = 1;" 
		echo "    	followers_leaving[id] = 0;"
		echo "		reset_done = true;"
		echo "	   }" 
		echo "}" 
		echo "void save_vehicle(id_v other_id)" 
		echo "{" 
		echo "	id_other = other_id;" 
		echo "}" 
		echo "bool check_leading()" 
		echo "{" 
		echo "	if(S[id_other] &lt; S[id]) return true;" 
		echo "    if(S[id_other] == S[id]) return (id &gt; id_other);" 
		echo "    return false;" 
		echo "}" 
		echo "bool check_following()" 
		echo "{" 
		echo "	return !check_leading();" 
		echo "}" 
		echo "void addfollower()" 
		echo "{" 
		echo "    bool already_queue=false;" 
		echo "    int i;" 
		echo "    for (i=0;i&lt;followers_length;i++)" 
		echo "    {" 
		echo "        if (followers[i] == id_other)" 
		echo "            already_queue=true;" 
		echo "    }" 
		echo "     if (already_queue==false)" 
		echo "        followers[followers_length++] = id_other;   " 
		echo "}" 
		echo "void addfollower_id(id_v element)" 
		echo "{" 
		echo "    bool already_queue=false;" 
		echo "    int i;" 
		echo "        for (i=0;i&lt;followers_length;i++)" 
		echo "        {" 
		echo "            if (followers[i]== element)" 
		echo "                already_queue=true;" 
		echo "        }    " 
		echo "   " 
		echo "     if (already_queue==false)" 
		echo "        followers[followers_length++] = element;" 
		echo "}" 
		echo "void addleader()" 
		echo "{" 
		echo "    leader = id_other;" 
		echo "}" 
		echo "void setleader()" 
		echo "{" 
		echo "    leader = id;" 
		echo "}" 
		echo "// send followers queue and reset" 
		echo "void send_followers_queue()" 
		echo "{" 
		echo "    int i;" 
		echo "    for(i=0; i&lt;followers_length; i++)" 
		echo "    {" 
		echo "        followers_G[i] = followers[i];" 
		echo "        followers[i] = -1;" 
		echo "    }" 
		echo "    followers_length_G = followers_length;" 
		echo "}" 
		echo "void receive_followers_queue()" 
		echo "{" 
		echo "    int i;" 
		echo "    for(i=0; i&lt;followers_length_G; i++)" 
		echo "    {" 
		echo "        addfollower_id(followers_G[i]);" 
		echo "        followers_G[i] = -1;" 
		echo "    }" 
		echo "    followers_length_G = 0;" 
		echo "}" 
		echo "// remove and shift" 
		echo "void rmvfollower_id(id_v element)" 
		echo "{" 
		echo "    int i;" 
		echo "    int j;" 
		echo "    for(i=0; i&lt;followers_length; i++)" 
		echo "    {" 
		echo "        if(followers[i] == element)" 
		echo "        {" 
		echo "            for(j=i; j&lt;N-2; j++)" 
		echo "            {" 
		echo "                followers[j] = followers[j+1];" 
		echo "            }" 
		echo "            followers[N-2] = -1;    // last element" 
		echo "            followers_length--;" 
		echo "        }" 
		echo "    }" 
		echo "}" 
		echo "void popglobalid(id_v element)" 
		echo "{" 
		echo "    int i;" 
		echo "    int j;" 
		echo "    for (i=0; i&lt;N-2; i++)" 
		echo "    {" 
		echo "        if(pfollowers_G[i] == element)" 
		echo "        {" 
		echo "            for(j=i; j&lt;N-2; j++)" 
		echo "            {" 
		echo "                pfollowers_G[j] = pfollowers_G[j+1];" 
		echo "            }" 
		echo "            pfollowers_G[N-2] = -1;" 
		echo "            pfollowers_length_G--;" 
		echo "        }" 
		echo "    }" 
		echo "}" 
		echo "// remove top follower from the queue and shift" 
		echo "void rmvfollower()" 
		echo "{" 
		echo "    int i;" 
		echo "    for(i=0; i&lt;N-2; i++)" 
		echo "    {" 
		echo "        followers[i] = followers[i+1];" 
		echo "    }" 
		echo "    followers[N-2] = -1;" 
		echo "    followers_length--;" 
		echo "}" 
		echo "bool dissolve()" 
		echo "{" 
		echo "    return (followers_length == 0);" 
		echo "}" 
		echo "void copy_followers()" 
		echo "{" 
		echo "    followers_app = followers_length;" 
		echo "}" 
		echo "void move_lane()" 
		echo "{" 
		echo "    lane_number_global = ((lane_number_global+1)%4)+1;" 
		echo "}" 
		echo "int nextone()" 
		echo "{" 
		echo "    return pfollowers_G[0];" 
		echo "}" 
		echo "void popglobal()" 
		echo "{" 
		echo "    int i;" 
		echo "    for(i=0; i&lt;N-2; i++)" 
		echo "    {" 
		echo "            pfollowers_G[i] = pfollowers_G[i+1];" 
		echo "    }" 
		echo "    pfollowers_G[N-2] = -1;" 
		echo "    pfollowers_length_G = pfollowers_length_G - 1;" 
		echo "}" 
		echo "bool lastone()" 
		echo "{" 
		echo "    return pfollowers_length_G == 0;" 
		echo "}" 
		echo "void propagate_followers()" 
		echo "{" 
		echo "    int i;" 
		echo "    for (i=0; i&lt;followers_length; i++)" 
		echo "    {" 
		echo "        pfollowers_G[i] = followers[i];" 
		echo "    }" 
		echo "    pfollowers_length_G = followers_length;" 
		echo "}" 
		echo "void process_message()" 
		echo "{" 
		echo "    lane_number = lane_number_global;" 
		echo "}" 
		echo "void process_propagate()" 
		echo "{" 
		echo "    lane_number = lane_number_global;" 
		echo "}" 
		echo "void changeReq()" 
		echo "{" 
		echo "    reqG.sender = id;" 
		echo "}" 
		echo "void propReq()" 
		echo "{" 
		echo "    reqG.sender = id;" 
		echo "}    </declaration>" 
		echo "		<location id=\"id0\" x=\"-2312\" y=\"-1802\">" 
		echo "			<name x=\"-2303\" y=\"-1844\">Waiting_for_Leaving</name>" 
		echo "		</location>" 
		echo "		<location id=\"id1\" x=\"-459\" y=\"-2125\">" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id2\" x=\"-731\" y=\"-1836\">" 
		echo "		</location>" 
		echo "		<location id=\"id3\" x=\"-629\" y=\"-2669\">" 
		echo "			<name x=\"-612\" y=\"-2677\">Take_Control</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id4\" x=\"-612\" y=\"-2125\">" 
		echo "			<name x=\"-739\" y=\"-2133\">Propagate_Wait</name>" 
		echo "		</location>" 
		echo "		<location id=\"id5\" x=\"-790\" y=\"-2031\">" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id6\" x=\"-901\" y=\"-2031\">" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id7\" x=\"-2312\" y=\"-2142\">" 
		echo "			<name x=\"-2286\" y=\"-2142\">Propagate_Leader</name>" 
		echo "		</location>" 
		echo "		<location id=\"id8\" x=\"-1351\" y=\"-2524\">" 
		echo "			<name x=\"-1334\" y=\"-2550\">Timeout</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id9\" x=\"-1130\" y=\"-2414\">" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id10\" x=\"-1547\" y=\"-2167\">" 
		echo "		</location>" 
		echo "		<location id=\"id11\" x=\"-1351\" y=\"-2303\">" 
		echo "			<name x=\"-1326\" y=\"-2329\">Following_Ready</name>" 
		echo "		</location>" 
		echo "		<location id=\"id12\" x=\"-1147\" y=\"-2031\">" 
		echo "			<name x=\"-1198\" y=\"-2023\">Propagate_Process</name>" 
		echo "			<label kind=\"invariant\" x=\"-1215\" y=\"-2006\">x&lt;=PROPAGATE_TIME + BOUND</label>" 
		echo "		</location>" 
		echo "		<location id=\"id13\" x=\"-2312\" y=\"-2422\">" 
		echo "			<name x=\"-2312\" y=\"-2405\">Propagate_Leader_0</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id14\" x=\"-1351\" y=\"-2414\">" 
		echo "			<name x=\"-1479\" y=\"-2431\">Change_Leader</name>" 
		echo "			<label kind=\"invariant\" x=\"-1547\" y=\"-2405\">x&lt;=CHANGE_LEADER_TIME</label>" 
		echo "		</location>" 
		echo "		<location id=\"id15\" x=\"-1547\" y=\"-2244\">" 
		echo "			<urgent/>" 
		echo "		</location>" 
		echo "		<location id=\"id16\" x=\"-1547\" y=\"-2082\">" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id17\" x=\"-1445\" y=\"-1802\">" 
		echo "			<name x=\"-1479\" y=\"-1827\">Left</name>" 
		echo "		</location>" 
		echo "		<location id=\"id18\" x=\"-1708\" y=\"-1801\">" 
		echo "			<name x=\"-1718\" y=\"-1835\">Leaving_Leader_1</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id19\" x=\"-1989\" y=\"-1802\">" 
		echo "			<name x=\"-2099\" y=\"-1853\">Leaving_Leader</name>" 
		echo "		</location>" 
		echo "		<location id=\"id20\" x=\"-1224\" y=\"-1836\">" 
		echo "			<name x=\"-1215\" y=\"-1861\">Leaving_Wait</name>" 
		echo "		</location>" 
		echo "		<location id=\"id21\" x=\"-1768\" y=\"-2669\">" 
		echo "			<name x=\"-1836\" y=\"-2711\">Dissolving_Platoon</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id22\" x=\"-629\" y=\"-2346\">" 
		echo "			<name x=\"-620\" y=\"-2380\">Leader_Left</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id23\" x=\"-2320\" y=\"-2669\">" 
		echo "			<name x=\"-2380\" y=\"-2703\">Follower_Left</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id24\" x=\"-1547\" y=\"-1989\">" 
		echo "			<name x=\"-1521\" y=\"-2014\">Leading_Negotiation</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id25\" x=\"-2244\" y=\"-1989\">" 
		echo "			<name x=\"-2337\" y=\"-1980\">Add_Follower</name>" 
		echo "			<urgent/>" 
		echo "		</location>" 
		echo "		<location id=\"id26\" x=\"-1759\" y=\"-1989\">" 
		echo "			<name x=\"-1767\" y=\"-2023\">Merging</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id27\" x=\"-1666\" y=\"-2346\">" 
		echo "			<name x=\"-1666\" y=\"-2329\">Forming</name>" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id28\" x=\"-901\" y=\"-2235\">" 
		echo "			<name x=\"-885\" y=\"-2269\">Following</name>" 
		echo "			<label kind=\"invariant\" x=\"-807\" y=\"-2269\">t&lt;=LT[id] + GAP</label>" 
		echo "		</location>" 
		echo "		<location id=\"id29\" x=\"-1989\" y=\"-2141\">" 
		echo "			<name x=\"-1980\" y=\"-2133\">Leading</name>" 
		echo "			<label kind=\"invariant\" x=\"-1980\" y=\"-2116\">t&lt;=LT[id] + GAP</label>" 
		echo "		</location>" 
		echo "		<location id=\"id30\" x=\"-901\" y=\"-2465\">" 
		echo "			<name x=\"-884\" y=\"-2491\">Joining</name>" 
		echo "			<label kind=\"invariant\" x=\"-1037\" y=\"-2482\">x&lt;=JOINING_TIME</label>" 
		echo "		</location>" 
		echo "		<location id=\"id31\" x=\"-1572\" y=\"-2482\">" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id32\" x=\"-1751\" y=\"-2482\">" 
		echo "			<committed/>" 
		echo "		</location>" 
		echo "		<location id=\"id33\" x=\"-1428\" y=\"-2575\">" 
		echo "			<name x=\"-1402\" y=\"-2592\">Discovering</name>" 
		echo "			<label kind=\"invariant\" x=\"-1394\" y=\"-2609\">t&lt;=LT[id] + GAP</label>" 
		echo "		</location>" 
		echo "		<location id=\"id34\" x=\"-1428\" y=\"-2754\">" 
		echo "			<name x=\"-1437\" y=\"-2788\">Start</name>" 
		echo "			<label kind=\"invariant\" x=\"-1411\" y=\"-2762\">t&lt;=ST[id] + GAP</label>" 
		echo "		</location>" 
		echo "		<location id=\"id35\" x=\"-1861\" y=\"-2295\">" 
		echo "			<name x=\"-1971\" y=\"-2321\">Leading_Ready</name>" 
		echo "		</location>" 
		echo "		<init ref=\"id34\"/>" 
		echo "		<transition>" 
		echo "			<source ref=\"id29\"/>" 
		echo "			<target ref=\"id23\"/>" 
		echo "			<label kind=\"select\" x=\"-1989\" y=\"-2592\">i:id_v</label>" 
		echo "			<label kind=\"guard\" x=\"-1989\" y=\"-2575\">changing==0</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1989\" y=\"-2558\">follower_leaving[id][i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1989\" y=\"-2541\">id_other = i," 
		echo "rmvfollower_id(i)</label>" 
		echo "			<nail x=\"-1989\" y=\"-2626\"/>" 
		echo "			<nail x=\"-2286\" y=\"-2626\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id21\"/>" 
		echo "			<target ref=\"id17\"/>" 
		echo "			<label kind=\"guard\" x=\"-1683\" y=\"-2703\">t&gt;LT[id]</label>" 
		echo "			<label kind=\"assignment\" x=\"-1623\" y=\"-2703\">platoons--</label>" 
		echo "			<nail x=\"-1734\" y=\"-2686\"/>" 
		echo "			<nail x=\"-425\" y=\"-2686\"/>" 
		echo "			<nail x=\"-425\" y=\"-1802\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id23\"/>" 
		echo "			<target ref=\"id0\"/>" 
		echo "			<label kind=\"guard\" x=\"-2439\" y=\"-1793\">!dissolve()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2439\" y=\"-1776\">follower_leaving_ack[id_other]!</label>" 
		echo "			<nail x=\"-2439\" y=\"-2669\"/>" 
		echo "			<nail x=\"-2439\" y=\"-1793\"/>" 
		echo "			<nail x=\"-2337\" y=\"-1793\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id0\"/>" 
		echo "			<target ref=\"id23\"/>" 
		echo "			<label kind=\"select\" x=\"-2414\" y=\"-2533\">i:id_v</label>" 
		echo "			<label kind=\"guard\" x=\"-2414\" y=\"-2516\">changing==0</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2414\" y=\"-2499\">follower_leaving[id][i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-2414\" y=\"-2482\">id_other = i," 
		echo "rmvfollower_id(i)</label>" 
		echo "			<nail x=\"-2414\" y=\"-1802\"/>" 
		echo "			<nail x=\"-2414\" y=\"-2669\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id0\"/>" 
		echo "			<target ref=\"id19\"/>" 
		echo "			<label kind=\"guard\" x=\"-2295\" y=\"-1819\">pfollowers_length_G==0 &amp;&amp; " 
		echo "followers_leaving[id]==0 &amp;&amp; changing==0</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id7\"/>" 
		echo "			<target ref=\"id0\"/>" 
		echo "			<label kind=\"guard\" x=\"-2312\" y=\"-1904\">t&gt;LT[id]</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2312\" y=\"-1887\">propagate_ack[id]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-2312\" y=\"-1870\">popglobal()</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id4\"/>" 
		echo "			<target ref=\"id1\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-603\" y=\"-2142\">propagate_ack[id]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-586\" y=\"-2125\">popglobal()</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id1\"/>" 
		echo "			<target ref=\"id2\"/>" 
		echo "			<label kind=\"guard\" x=\"-527\" y=\"-2006\">t&gt;=LT[id]</label>" 
		echo "			<label kind=\"assignment\" x=\"-663\" y=\"-1861\">followers_leaving[leader]++</label>" 
		echo "			<nail x=\"-459\" y=\"-1836\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id1\"/>" 
		echo "			<target ref=\"id28\"/>" 
		echo "			<label kind=\"guard\" x=\"-518\" y=\"-2176\">t&lt;LT[id]</label>" 
		echo "			<nail x=\"-459\" y=\"-2193\"/>" 
		echo "			<nail x=\"-858\" y=\"-2193\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id6\"/>" 
		echo "			<target ref=\"id2\"/>" 
		echo "			<label kind=\"guard\" x=\"-884\" y=\"-1929\">lastone() &amp;&amp; t&gt;=LT[id]</label>" 
		echo "			<label kind=\"assignment\" x=\"-943\" y=\"-1921\">b=0," 
		echo "followers_leaving[leader]++</label>" 
		echo "			<nail x=\"-901\" y=\"-1904\"/>" 
		echo "			<nail x=\"-731\" y=\"-1904\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id2\"/>" 
		echo "			<target ref=\"id20\"/>" 
		echo "			<label kind=\"guard\" x=\"-1028\" y=\"-1853\">pfollowers_length_G==0</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1037\" y=\"-1836\">follower_leaving[leader][id]!</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id28\"/>" 
		echo "			<target ref=\"id20\"/>" 
		echo "			<label kind=\"guard\" x=\"-1215\" y=\"-2235\">t&gt;=LT[id] - GAP &amp;&amp; pfollowers_length_G==0 " 
		echo "&amp;&amp; changing==0</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1139\" y=\"-2252\">follower_leaving[leader][id]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1224\" y=\"-1929\">followers_leaving[leader]++</label>" 
		echo "			<nail x=\"-1224\" y=\"-2235\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id3\"/>" 
		echo "			<target ref=\"id21\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id22\"/>" 
		echo "			<target ref=\"id3\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id5\"/>" 
		echo "			<target ref=\"id4\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-773\" y=\"-2048\">propagate[nextone()]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-772\" y=\"-2031\">propReq()</label>" 
		echo "			<nail x=\"-612\" y=\"-2031\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id6\"/>" 
		echo "			<target ref=\"id28\"/>" 
		echo "			<label kind=\"guard\" x=\"-901\" y=\"-2091\">lastone() &amp;&amp; t&lt;LT[id]</label>" 
		echo "			<label kind=\"assignment\" x=\"-901\" y=\"-2133\">b=0</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id6\"/>" 
		echo "			<target ref=\"id5\"/>" 
		echo "			<label kind=\"guard\" x=\"-884\" y=\"-2048\">!lastone()</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id12\"/>" 
		echo "			<target ref=\"id6\"/>" 
		echo "			<label kind=\"guard\" x=\"-1129\" y=\"-2065\">x&gt;=PROPAGATE_TIME - BOUND</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1113\" y=\"-2048\">propagate_ack[req.sender]!</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id13\"/>" 
		echo "			<target ref=\"id7\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-2312\" y=\"-2312\">propagate[nextone()]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-2312\" y=\"-2329\">propReq()</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id7\"/>" 
		echo "			<target ref=\"id29\"/>" 
		echo "			<label kind=\"guard\" x=\"-2286\" y=\"-2159\">t&lt;=LT[id]</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2167\" y=\"-2159\">propagate_ack[id]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-2150\" y=\"-2142\">popglobal()</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id30\"/>" 
		echo "			<target ref=\"id8\"/>" 
		echo "			<label kind=\"guard\" x=\"-1215\" y=\"-2541\">x==JOINING_TIME</label>" 
		echo "			<nail x=\"-918\" y=\"-2524\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id14\"/>" 
		echo "			<target ref=\"id8\"/>" 
		echo "			<label kind=\"guard\" x=\"-1351\" y=\"-2482\">x==CHANGE_LEADER_TIME</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id8\"/>" 
		echo "			<target ref=\"id33\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id10\"/>" 
		echo "			<target ref=\"id15\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1691\" y=\"-2227\">new_leader_ack[id]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1640\" y=\"-2210\">rmvfollower()</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id16\"/>" 
		echo "			<target ref=\"id10\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1547\" y=\"-2142\">new_leader[followers[0]][id_other]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1547\" y=\"-2125\">changeReq()</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id9\"/>" 
		echo "			<target ref=\"id14\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1334\" y=\"-2431\">new_leader_ack[req.sender]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1317\" y=\"-2414\">x=0</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id28\"/>" 
		echo "			<target ref=\"id9\"/>" 
		echo "			<label kind=\"select\" x=\"-1028\" y=\"-2431\">i:id_v</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1045\" y=\"-2405\">new_leader[id][i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1003\" y=\"-2388\">id_other=i," 
		echo "req=reqG</label>" 
		echo "			<nail x=\"-918\" y=\"-2414\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id14\"/>" 
		echo "			<target ref=\"id11\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1351\" y=\"-2380\">new_follower[id_other]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1351\" y=\"-2358\">changing--</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id27\"/>" 
		echo "			<target ref=\"id11\"/>" 
		echo "			<label kind=\"guard\" x=\"-1581\" y=\"-2363\">check_following()</label>" 
		echo "			<nail x=\"-1402\" y=\"-2346\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id15\"/>" 
		echo "			<target ref=\"id11\"/>" 
		echo "			<label kind=\"guard\" x=\"-1504\" y=\"-2261\">followers_length==0</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1504\" y=\"-2244\">new_follower[id_other]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1504\" y=\"-2227\">changing--</label>" 
		echo "			<nail x=\"-1351\" y=\"-2244\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id11\"/>" 
		echo "			<target ref=\"id28\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1326\" y=\"-2303\">add_follower[id_other][id]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1326\" y=\"-2286\">addleader()</label>" 
		echo "			<nail x=\"-943\" y=\"-2303\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id24\"/>" 
		echo "			<target ref=\"id35\"/>" 
		echo "			<label kind=\"guard\" x=\"-1691\" y=\"-2167\">check_leading()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1691\" y=\"-2150\">new_follower[id]?</label>" 
		echo "			<nail x=\"-1581\" y=\"-2048\"/>" 
		echo "			<nail x=\"-1691\" y=\"-2048\"/>" 
		echo "			<nail x=\"-1691\" y=\"-2295\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id29\"/>" 
		echo "			<target ref=\"id35\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1989\" y=\"-2235\">new_follower[id]?</label>" 
		echo "			<nail x=\"-1989\" y=\"-2295\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id35\"/>" 
		echo "			<target ref=\"id29\"/>" 
		echo "			<label kind=\"select\" x=\"-1861\" y=\"-2278\">i:id_v</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1861\" y=\"-2261\">add_follower[id][i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1861\" y=\"-2244\">addfollower_id(i)," 
		echo "setleader()</label>" 
		echo "			<nail x=\"-1861\" y=\"-2142\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id27\"/>" 
		echo "			<target ref=\"id35\"/>" 
		echo "			<label kind=\"guard\" x=\"-1853\" y=\"-2363\">check_leading()</label>" 
		echo "			<label kind=\"assignment\" x=\"-1852\" y=\"-2346\">setleader(), platoons++</label>" 
		echo "			<nail x=\"-1861\" y=\"-2346\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id28\"/>" 
		echo "			<target ref=\"id12\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1147\" y=\"-2176\">propagate[id]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1147\" y=\"-2159\">req = reqG," 
		echo "x=0</label>" 
		echo "			<nail x=\"-918\" y=\"-2176\"/>" 
		echo "			<nail x=\"-1147\" y=\"-2176\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id17\"/>" 
		echo "			<target ref=\"id17\"/>" 
		echo "			<nail x=\"-1470\" y=\"-1768\"/>" 
		echo "			<nail x=\"-1419\" y=\"-1768\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id29\"/>" 
		echo "			<target ref=\"id13\"/>" 
		echo "			<label kind=\"guard\" x=\"-2201\" y=\"-2439\">followers_leaving[id]==0</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2159\" y=\"-2422\">propagate_leader?</label>" 
		echo "			<label kind=\"assignment\" x=\"-2278\" y=\"-2456\">propagate_followers()," 
		echo "b=1," 
		echo "time=0</label>" 
		echo "			<nail x=\"-2023\" y=\"-2184\"/>" 
		echo "			<nail x=\"-2023\" y=\"-2422\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id33\"/>" 
		echo "			<target ref=\"id17\"/>" 
		echo "			<label kind=\"guard\" x=\"-1343\" y=\"-2703\">t&gt;=LT[id]</label>" 
		echo "			<nail x=\"-1343\" y=\"-2686\"/>" 
		echo "			<nail x=\"-425\" y=\"-2686\"/>" 
		echo "			<nail x=\"-425\" y=\"-1802\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id15\"/>" 
		echo "			<target ref=\"id16\"/>" 
		echo "			<label kind=\"guard\" x=\"-1436\" y=\"-2210\">followers_length&gt;0</label>" 
		echo "			<nail x=\"-1504\" y=\"-2210\"/>" 
		echo "			<nail x=\"-1300\" y=\"-2210\"/>" 
		echo "			<nail x=\"-1300\" y=\"-2082\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id24\"/>" 
		echo "			<target ref=\"id16\"/>" 
		echo "			<label kind=\"guard\" x=\"-1547\" y=\"-2048\">check_following()</label>" 
		echo "			<label kind=\"assignment\" x=\"-1547\" y=\"-2031\">changing = followers_length + 1</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id20\"/>" 
		echo "			<target ref=\"id17\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1428\" y=\"-1853\">follower_leaving_ack[id]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1428\" y=\"-1836\">followers_leaving[leader]--</label>" 
		echo "			<nail x=\"-1445\" y=\"-1836\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id18\"/>" 
		echo "			<target ref=\"id17\"/>" 
		echo "			<label kind=\"guard\" x=\"-1623\" y=\"-1878\">followers_length==0</label>" 
		echo "			<label kind=\"assignment\" x=\"-1623\" y=\"-1861\">total_left++</label>" 
		echo "			<nail x=\"-1496\" y=\"-1802\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id29\"/>" 
		echo "			<target ref=\"id19\"/>" 
		echo "			<label kind=\"guard\" x=\"-1989\" y=\"-1955\">t&gt;=LT[id] - GAP &amp;&amp; pfollowers_length_G==0 &amp;&amp; " 
		echo "followers_leaving[id]==0 &amp;&amp; changing==0</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id18\"/>" 
		echo "			<target ref=\"id19\"/>" 
		echo "			<label kind=\"guard\" x=\"-1912\" y=\"-1776\">followers_length&gt;0</label>" 
		echo "			<nail x=\"-1759\" y=\"-1776\"/>" 
		echo "			<nail x=\"-1946\" y=\"-1776\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id19\"/>" 
		echo "			<target ref=\"id18\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1912\" y=\"-1844\">leader_leaving[id]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1912\" y=\"-1827\">followers_length--</label>" 
		echo "			<nail x=\"-1946\" y=\"-1827\"/>" 
		echo "			<nail x=\"-1759\" y=\"-1827\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id21\"/>" 
		echo "			<target ref=\"id33\"/>" 
		echo "			<label kind=\"guard\" x=\"-1649\" y=\"-2643\">t&lt;=LT[id]</label>" 
		echo "			<label kind=\"assignment\" x=\"-1751\" y=\"-2660\">platoons--</label>" 
		echo "			<nail x=\"-1768\" y=\"-2643\"/>" 
		echo "			<nail x=\"-1428\" y=\"-2643\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id23\"/>" 
		echo "			<target ref=\"id21\"/>" 
		echo "			<label kind=\"guard\" x=\"-1955\" y=\"-2669\">dissolve()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2227\" y=\"-2669\">follower_leaving_ack[id_other]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1955\" y=\"-2652\">leader = -1</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id28\"/>" 
		echo "			<target ref=\"id22\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-629\" y=\"-2295\">leader_leaving[leader]?</label>" 
		echo "			<nail x=\"-629\" y=\"-2235\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id23\"/>" 
		echo "			<target ref=\"id29\"/>" 
		echo "			<label kind=\"guard\" x=\"-2320\" y=\"-2567\">!dissolve()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2261\" y=\"-2533\">follower_leaving_ack[id_other]!</label>" 
		echo "			<nail x=\"-2320\" y=\"-2533\"/>" 
		echo "			<nail x=\"-2006\" y=\"-2533\"/>" 
		echo "			<nail x=\"-2006\" y=\"-2184\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id30\"/>" 
		echo "			<target ref=\"id24\"/>" 
		echo "			<label kind=\"guard\" x=\"-570\" y=\"-2439\">check_leading()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-553\" y=\"-2422\">negotiate[id]!</label>" 
		echo "			<nail x=\"-442\" y=\"-2465\"/>" 
		echo "			<nail x=\"-442\" y=\"-1955\"/>" 
		echo "			<nail x=\"-1521\" y=\"-1955\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id26\"/>" 
		echo "			<target ref=\"id24\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1700\" y=\"-2006\">negotiate[id]!</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id25\"/>" 
		echo "			<target ref=\"id24\"/>" 
		echo "			<label kind=\"select\" x=\"-2176\" y=\"-1929\">i:id_v</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2176\" y=\"-1912\">negotiate[i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-2176\" y=\"-1895\">save_vehicle(i)</label>" 
		echo "			<nail x=\"-2244\" y=\"-1912\"/>" 
		echo "			<nail x=\"-1547\" y=\"-1912\"/>" 
		echo "			<nail x=\"-1547\" y=\"-1972\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id33\"/>" 
		echo "			<target ref=\"id30\"/>" 
		echo "			<label kind=\"select\" x=\"-901\" y=\"-2575\">i:id_v</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-901\" y=\"-2558\">followme[i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-901\" y=\"-2541\">save_vehicle(i)," 
		echo "x=0</label>" 
		echo "			<nail x=\"-901\" y=\"-2575\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id31\"/>" 
		echo "			<target ref=\"id27\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1572\" y=\"-2456\">discovery_2[id]!</label>" 
		echo "			<nail x=\"-1572\" y=\"-2388\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id32\"/>" 
		echo "			<target ref=\"id27\"/>" 
		echo "			<label kind=\"select\" x=\"-1750\" y=\"-2465\">i:id_v</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1751\" y=\"-2448\">discovery_2[i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1751\" y=\"-2431\">save_vehicle(i)</label>" 
		echo "			<nail x=\"-1751\" y=\"-2388\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id25\"/>" 
		echo "			<target ref=\"id29\"/>" 
		echo "			<label kind=\"select\" x=\"-2286\" y=\"-2108\">i:id_v</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2286\" y=\"-2091\">followyou[i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-2286\" y=\"-2074\">addfollower_id(i)</label>" 
		echo "			<nail x=\"-2286\" y=\"-1989\"/>" 
		echo "			<nail x=\"-2286\" y=\"-2108\"/>" 
		echo "			<nail x=\"-2006\" y=\"-2107\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id29\"/>" 
		echo "			<target ref=\"id25\"/>" 
		echo "			<label kind=\"guard\" x=\"-2193\" y=\"-2040\">changing==0 &amp;&amp;" 
		echo "followers_leaving[id]==0 &amp;&amp;" 
		echo "pfollowers_length_G==0</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-2167\" y=\"-1989\">followme[id]!</label>" 
		echo "			<nail x=\"-1989\" y=\"-1989\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id29\"/>" 
		echo "			<target ref=\"id26\"/>" 
		echo "			<label kind=\"select\" x=\"-1946\" y=\"-2040\">i:id_v</label>" 
		echo "			<label kind=\"guard\" x=\"-1963\" y=\"-1989\">followers_leaving[id]==0</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1946\" y=\"-2023\">followme[i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1946\" y=\"-2006\">save_vehicle(i), x=0</label>" 
		echo "			<nail x=\"-1989\" y=\"-1989\"/>" 
		echo "			<nail x=\"-1912\" y=\"-1989\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id30\"/>" 
		echo "			<target ref=\"id28\"/>" 
		echo "			<label kind=\"guard\" x=\"-901\" y=\"-2405\">check_following()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-901\" y=\"-2388\">followyou[id]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-901\" y=\"-2371\">addleader()</label>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id33\"/>" 
		echo "			<target ref=\"id31\"/>" 
		echo "			<label kind=\"select\" x=\"-1470\" y=\"-2550\">i:id_v</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-1530\" y=\"-2533\">discovery_1[i]?</label>" 
		echo "			<label kind=\"assignment\" x=\"-1530\" y=\"-2516\">save_vehicle(i)</label>" 
		echo "			<nail x=\"-1427\" y=\"-2482\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id33\"/>" 
		echo "			<target ref=\"id32\"/>" 
		echo "			<label kind=\"synchronisation\" x=\"-1674\" y=\"-2592\">discovery_1[id]!</label>" 
		echo "			<label kind=\"assignment\" x=\"-1732\" y=\"-2575\">x=0</label>" 
		echo "			<nail x=\"-1750\" y=\"-2575\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id34\"/>" 
		echo "			<target ref=\"id33\"/>" 
		echo "			<label kind=\"guard\" x=\"-1496\" y=\"-2737\">t&gt;=ST[id] - GAP</label>" 
		echo "			<label kind=\"assignment\" x=\"-1564\" y=\"-2720\">reset_global(), x=0</label>" 
		echo "			<nail x=\"-1428\" y=\"-2643\"/>" 
		echo "			<nail x=\"-1428\" y=\"-2643\"/>" 
		echo "		</transition>" 
		echo "	</template>" 
		echo "	<template>" 
		echo "		<name>Propagate</name>" 
		echo "		<declaration>clock t;" 
		echo "int [0,M-1] index = 0;" 
		echo "int fire_time()" 
		echo "{" 
		echo "    return MP[index];" 
		echo "}" 
		echo "void inc_index()" 
		echo "{" 
		echo "    index = (index + 1)%(M-1);" 
		echo "}</declaration>" 
		echo "		<location id=\"id36\" x=\"-212\" y=\"-25\">" 
		echo "			<name x=\"-238\" y=\"-8\">Propagate</name>" 
		echo "			<label kind=\"invariant\" x=\"-187\" y=\"-34\">t&lt;=fire_time()</label>" 
		echo "		</location>" 
		echo "		<init ref=\"id36\"/>" 
		echo "		<transition>" 
		echo "			<source ref=\"id36\"/>" 
		echo "			<target ref=\"id36\"/>" 
		echo "			<label kind=\"guard\" x=\"-255\" y=\"-161\">t&gt;=fire_time()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-263\" y=\"-187\">propagate_leader!</label>" 
		echo "			<label kind=\"assignment\" x=\"-255\" y=\"-144\">t=0, inc_index()</label>" 
		echo "			<nail x=\"-331\" y=\"-161\"/>" 
		echo "			<nail x=\"-93\" y=\"-161\"/>" 
		echo "		</transition>" 
		echo "	</template>" 
		echo "	<template>" 
		echo "		<name>Message</name>" 
		echo "		<declaration>clock t;" 
		echo "int [0,M-1] index = 0;" 
		echo "int fire_time()" 
		echo "{" 
		echo "    return CL[index];" 
		echo "}" 
		echo "void inc_index()" 
		echo "{   " 
		echo "    index = (index + 1)%(M-1);" 
		echo "}</declaration>" 
		echo "		<location id=\"id37\" x=\"7\" y=\"-76\">" 
		echo "			<name x=\"-17\" y=\"-59\">Message</name>" 
		echo "			<label kind=\"invariant\" x=\"32\" y=\"-85\">t&lt;=fire_time()</label>" 
		echo "		</location>" 
		echo "		<init ref=\"id37\"/>" 
		echo "		<transition>" 
		echo "			<source ref=\"id37\"/>" 
		echo "			<target ref=\"id37\"/>" 
		echo "			<label kind=\"guard\" x=\"-34\" y=\"-212\">t&gt;=fire_time()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-42\" y=\"-238\">message_leader!</label>" 
		echo "			<label kind=\"assignment\" x=\"-36\" y=\"-195\">t=0, inc_index()</label>" 
		echo "			<nail x=\"-112\" y=\"-212\"/>" 
		echo "			<nail x=\"126\" y=\"-212\"/>" 
		echo "		</transition>" 
		echo "	</template>" 
		echo "	<template>" 
		echo "		<name>Hazard_Event</name>" 
		echo "		<declaration>clock t;" 
		echo "int [0,M-1] index = 0;" 
		echo "int fire_time()" 
		echo "{" 
		echo "    return HE[index];" 
		echo "}" 
		echo "void inc_index()" 
		echo "{" 
		echo "    index = (index + 1)%(M-1);" 
		echo "}</declaration>" 
		echo "		<location id=\"id38\" x=\"-459\" y=\"-765\">" 
		echo "			<name x=\"-493\" y=\"-799\">Danger</name>" 
		echo "			<label kind=\"invariant\" x=\"-433\" y=\"-782\">t&lt;=fire_time()+2</label>" 
		echo "		</location>" 
		echo "		<location id=\"id39\" x=\"-459\" y=\"-612\">" 
		echo "			<name x=\"-510\" y=\"-620\">Safe</name>" 
		echo "			<label kind=\"invariant\" x=\"-501\" y=\"-595\">t&lt;=fire_time()</label>" 
		echo "		</location>" 
		echo "		<init ref=\"id39\"/>" 
		echo "		<transition>" 
		echo "			<source ref=\"id38\"/>" 
		echo "			<target ref=\"id39\"/>" 
		echo "			<label kind=\"guard\" x=\"-382\" y=\"-731\">t&gt;=fire_time()+2</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-382\" y=\"-714\">safe!</label>" 
		echo "			<label kind=\"assignment\" x=\"-382\" y=\"-697\">t=0</label>" 
		echo "			<nail x=\"-382\" y=\"-697\"/>" 
		echo "		</transition>" 
		echo "		<transition>" 
		echo "			<source ref=\"id39\"/>" 
		echo "			<target ref=\"id38\"/>" 
		echo "			<label kind=\"guard\" x=\"-637\" y=\"-688\">t&gt;=fire_time()</label>" 
		echo "			<label kind=\"synchronisation\" x=\"-595\" y=\"-714\">hazard!</label>" 
		echo "			<nail x=\"-535\" y=\"-697\"/>" 
		echo "		</transition>" 
		echo "	</template>" 
		echo "	<system>// List one or more processes to be composed into a system." 
		echo "system Vehicle, Propagate;" 
		echo "gantt {" 
		echo "    vehicle(i : id_v) : Vehicle(i).Discovering -&gt; 3," 
		echo "                        Vehicle(i).Leading -&gt; 2," 
		echo "                        Vehicle(i).Following -&gt; 1," 
		echo "                        Vehicle(i).Change_Leader -&gt; 0," 
		echo "                        Vehicle(i).Propagate_Leader -&gt; 0," 
		echo "                        Vehicle(i).Propagate_Process -&gt; 0," 
		echo "                        Vehicle(i).Propagate_Wait -&gt; 0;" 
		echo "}</system>" 
		echo "	<queries>" 
		echo "		<query>" 
		echo "			<formula>A[] Vehicle($index).Leading imply  forall (i:id_v) S[$index]&gt;=S[i]" 
		echo "			</formula>" 
		echo "			<comment>The vehicle leader has the highest index" 
		echo "			</comment>" 
		echo "		</query>" 
		echo "		<query>" 
		echo "			<formula>A[](b==1 imply time&lt;=$K)" 
		echo "			</formula>" 
		echo "			<comment>" 
		echo "			</comment>" 
		echo "		</query>" 
		echo "		<query>" 
		echo "			<formula>A[](forall (k:id_v) Vehicle(k).Following imply exists (i:id_v) (Vehicle(i).Leading or Vehicle(i).Leading_Ready or Vehicle(i).Propagate_Leader or Vehicle(i).Propagate_Leader_0 or Vehicle(i).Add_Follower or Vehicle(i).Leading_Negotiation or Vehicle(i).Follower_Left or Vehicle(i).Leaving_Leader or Vehicle(i).Leaving_Leader_1))" 
		echo "			</formula>" 
		echo "			<comment>" 
		echo "			</comment>" 
		echo "		</query>" 
		echo "		<query>" 
		echo "			<formula>Vehicle($index).Start --&gt; Vehicle($index).Leading" 
		echo "			</formula>" 
		echo "			<comment>" 
		echo "			</comment>" 
		echo "		</query>" 
		echo "		<query>" 
		echo "			<formula>A&lt;&gt; Vehicle($index).Leading" 
		echo "			</formula>" 
		echo "			<comment>For all paths eventually: The vehicle with the highest index will eventually become the leader" 
		echo "			</comment>" 
		echo "		</query>" 
		echo "		<query>" 
		echo "			<formula>A&lt;&gt; (forall (i:id_v) Vehicle(i).Start imply forall (k:id_v)Vehicle(k).Left)" 
		echo "			</formula>" 
		echo "			<comment>" 
		echo "			</comment>" 
		echo "		</query>" 
		echo "		<query>" 
		echo "			<formula>A[]((exists (i:id_v) Vehicle(i).Leaving_Leader and forall (k:id_v) Vehicle(k).Following) imply forall (j:id_v) Vehicle(j).Dissolving_Platoon)" 
		echo "			</formula>" 
		echo "			<comment>If a Leader goes in Leaving, all his followers go in Dissolving" 
		echo "			</comment>" 
		echo "		</query>" 
		echo "		<query>" 
		echo "			<formula>A[] not deadlock" 
		echo "			</formula>" 
		echo "			<comment>The system is deadlock-free." 
		echo "			</comment>" 
		echo "		</query>" 
		echo "	</queries>" 
		echo "</nta>" 
		) >> Generated_model_$N.xml
		#all properties query
		#verify=$(verifyta -t0 -f tracefile Generated_model_$N.xml)
		#echo $verify >> Log.txt
		echo "verifying properties  ..."
		#query safety index
		# echo "A[] Vehicle($index).Leading imply  forall (i:id_v) S[$index]>=S[i]" >> Report.txt

		echo "Property_1 (Safety Index)" >> Report.txt
		echo "A[] Vehicle($index).Leading imply  forall (i:id_v) S[$index]>=S[i]" > query_safety_index.q
		echo "A[] Vehicle($index).Leading imply  forall (i:id_v) S[$index]>=S[i]" >> Log.txt
		#echo "verifying the property: A[] Vehicle($index).Leading imply  forall (i:id_v) S[$index]>=S[i] ..."
		# verify1=$(verifyta -t0 -f tracefile Generated_model_$N.xml query_safety_index.q)

		verify1=$({ time verifyta -t0 -f tracefile Generated_model_$N.xml query_safety_index.q; } 2>realtime.txt)
		time1=`cat realtime.txt`
		echo "Time to execute query: $time1"
		printf "$time1 " >> Matlab.txt
		printf "$time1 " >> Matlab2.txt
		rm realtime.txt


		#echo $verify1 > Generated_trace_$N.txt
		echo $verify1 >> Log.txt


		#PROBABILI ISTRUZIONI PER SOMMA FLOAT, CAPIRE BC
		#T1= 'echo $T1 + $time1 | bc -l'

		#echo $T1
		#echo $time1 >> Report.txt

		Write_global "$verify1" "query_safety_index" "A[] Vehicle($index).Leading imply  forall (i:id_v) S[$index]>=S[i]" "$time1"
		rm query_safety_index.q




		# query time
		# echo "A[](b==1 imply time<=$K)" >> Report.txt
		echo "Property_2 (Time)" >> Report.txt
		echo "A[](b==1 imply time<=$K)" > query_time.q
		echo "A[](b==1 imply time<=$K)" >> Log.txt
		#echo "verifying the property: A[](b==1 imply time<=$K) ..."


		verify1=$({ time verifyta -t0 -f tracefile Generated_model_$N.xml query_time.q; } 2>realtime.txt)
		time2=`cat realtime.txt`
		echo "Time to execute query: $time2"
		printf "$time2 " >> Matlab.txt
		printf "$time2 " >> Matlab2.txt
		rm realtime.txt

		#echo $verify1 > Generated_trace_$N.txt
		echo $verify1 >> Log.txt


		#ISTRUZIONI PER SOMMA FLOAT
		#T1= 'echo $T1 + $time1 | bc -l'
		# T2=$(echo ''$T2'' + ''$time2'' | bc -l)

		#echo $time1 >> Report.txt
		Write_global "$verify1" "query_time" "A[](b==1 imply time<=$K)" "$time2"
		rm query_time.q
		#query leading mode
		echo "A[](forall (k:id_v) Vehicle(k).Following imply exists (i:id_v) (Vehicle(i).Leading or Vehicle(i).Leading_Ready or Vehicle(i).Propagate_Leader or Vehicle(i).Propagate_Leader_0 or Vehicle(i).Add_Follower or Vehicle(i).Leading_Negotiation or Vehicle(i).Follower_Left or Vehicle(i).Leaving_Leader or Vehicle(i).Leaving_Leader_1 or Vehicle(i).Waiting_for_Leaving))" > query_leading.q
		# (
		# echo "A[](forall (k:id_v) Vehicle(k).Following imply exists"
		# echo "(i:id_v) (Vehicle(i).Leadingor Vehicle(i).Leading_Ready or"
		# echo "Vehicle(i).Propagate_Leader or Vehicle(i).Propagate_Leader_0"
		# echo "or Vehicle(i).Add_Follower or Vehicle(i).Leading_Negotiation"
		# echo "or Vehicle(i).Follower_Left orVehicle(i).Leaving_Leader or "
		# echo "Vehicle(i).Leaving_Leader_1 or Vehicle(i).Waiting_for_Leaving))"
		# ) >> Report.txt

		echo "Property_3 (Leading)" >> Report.txt
		echo "A[](forall (k:id_v) Vehicle(k).Following imply exists (i:id_v) (Vehicle(i).Leading or Vehicle(i).Leading_Ready or Vehicle(i).Propagate_Leader or Vehicle(i).Propagate_Leader_0 or Vehicle(i).Add_Follower or Vehicle(i).Leading_Negotiation or Vehicle(i).Follower_Left or Vehicle(i).Leaving_Leader or Vehicle(i).Leaving_Leader_1 or Vehicle(i).Waiting_for_Leaving))" >> Log.txt
		# verify1=$(verifyta -t0 -f tracefile Generated_model_$N.xml query_leading.q)
		# time1=$(time verifyta -t0 -f tracefile Generated_model_$N.xml query_leading.q)
		# #echo $verify1 >> Generated_trace_$N.txt
		# echo $verify1 >> Log.txt
		# time=${time1#*sys, } 
		# time3=${time% real*}



		verify1=$({ time verifyta -t0 -f tracefile Generated_model_$N.xml query_leading.q; } 2>realtime.txt)
		time3=`cat realtime.txt`
		echo "Time to execute query: $time3"
		printf "$time3 " >> Matlab.txt
		printf "$time3 " >> Matlab2.txt
		rm realtime.txt

		#echo $verify1 > Generated_trace_$N.txt
		echo $verify1 >> Log.txt



		#ISTRUZIONI PER SOMMA FLOAT
		#T1= 'echo $T1 + $time1 | bc -l'
		# T3=$(echo ''$T3'' + ''$time3'' | bc -l)

		#echo $time1 >> Report.txt

		Write_global "$verify1" "query_leading" "A[](forall (k:id_v) Vehicle(k).Following imply exists (i:id_v) (Vehicle(i).Leading or Vehicle(i).Leading_Ready or Vehicle(i).Propagate_Leader or Vehicle(i).Propagate_Leader_0 or Vehicle(i).Add_Follower or Vehicle(i).Leading_Negotiation or Vehicle(i).Follower_Left or Vehicle(i).Leaving_Leader or Vehicle(i).Leaving_Leader_1 or Vehicle(i).Waiting_for_Leaving))" "$time3"
		rm query_leading.q
		#query start leading
		# echo "Vehicle($index).Start --> Vehicle($index).Leading" >> Report.txt
		echo "Property_4 (Start Leading)" >> Report.txt
		echo "Vehicle($index).Start --> Vehicle($index).Leading" > query_start_leading.q
		echo "Vehicle($index).Start --> Vehicle($index).Leading" >> Log.txt
		#echo "verifying the property: Vehicle($index).Start --> Vehicle($index).Leading ..."
		# verify1=$(verifyta -t0 -f tracefile Generated_model_$N.xml query_start_leading.q)
		# time1=$(time verifyta -t0 -f tracefile Generated_model_$N.xml query_start_leading.q)
		# #echo $verify1 >> Generated_trace_$N.txt
		# echo $verify1 >> Log.txt
		# time=${time1#*sys, } 
		# time4=${time% real*}


		verify1=$({ time verifyta -t0 -f tracefile Generated_model_$N.xml query_start_leading.q; } 2>realtime.txt)
		time4=`cat realtime.txt`
		echo "Time to execute query: $time4"
		printf "$time4 " >> Matlab.txt
		printf "$time4 " >> Matlab2.txt
		rm realtime.txt

		#ISTRUZIONI PER SOMMA FLOAT
		#T1= 'echo $T1 + $time1 | bc -l'
		# T4=$(echo ''$T4'' + ''$time4'' | bc -l)

		#echo $time1 >> Report.txt
		Write_global "$verify1" "query_start_leading" "Vehicle($index).Start --> Vehicle($index).Leading" "$time4"
		rm query_start_leading.q
		#query leading with highest safety index
		# echo "A<> Vehicle($index).Leading" >> Report.txt
		echo "Property_5 (Index Leading)" >> Report.txt
		echo "A<> Vehicle($index).Leading" > query_index_leading.q
		echo "A<> Vehicle($index).Leading" >> Log.txt
		#echo "verifying the property: A<> Vehicle($index).Leading ..."
		# verify1=$(verifyta -t0 -f tracefile Generated_model_$N.xml query_index_leading.q)
		# time1=$(time verifyta -t0 -f tracefile Generated_model_$N.xml query_index_leading.q)
		# #echo $verify1 >> Generated_trace_$N.txt
		# echo $verify1 >> Log.txt
		# time=${time1#*sys, } 
		# time5=${time% real*}

		verify1=$({ time verifyta -t0 -f tracefile Generated_model_$N.xml query_index_leading.q; } 2>realtime.txt)
		time5=`cat realtime.txt`
		echo "Time to execute query: $time5"
		printf "$time5 " >> Matlab.txt
		printf "$time5 " >> Matlab2.txt
		rm realtime.txt

		#ISTRUZIONI PER SOMMA FLOAT
		#T1= 'echo $T1 + $time1 | bc -l'
		# T5=$(echo ''$T5'' + ''$time5'' | bc -l)

		#echo $time1 >> Report.txt
		Write_global "$verify1" "query_index_leading" "A<> Vehicle($index).Leading" "$time5"
		rm query_index_leading.q
		# #query left
		# (
		# echo "A<> (forall (i:id_v) Vehicle(i).Start imply forall (k:id_v)" 
		# echo "Vehicle(k).Left)"
		# )>> Report.txt

		echo "Property_6 (Left)" >> Report.txt
		echo "A<> (forall (i:id_v) Vehicle(i).Start imply forall (k:id_v)Vehicle(k).Left)" > query_left.q
		echo "A<> (forall (i:id_v) Vehicle(i).Start imply forall (k:id_v)Vehicle(k).Left)" >> Log.txt
		#echo "verifying the property: A<> (forall (i:id_v) Vehicle(i).Start imply forall (k:id_v)Vehicle(k).Left) ..."
		# verify1=$(verifyta -t0 -f tracefile Generated_model_$N.xml query_left.q)
		# time1=$(time verifyta -t0 -f tracefile Generated_model_$N.xml query_left.q)
		# #echo $verify1 >> Generated_trace_$N.txt
		# echo $verify1 >> Log.txt
		# time=${time1#*sys, } 
		# time6=${time% real*}

		verify1=$({ time verifyta -t0 -f tracefile Generated_model_$N.xml query_left.q; } 2>realtime.txt)
		time6=`cat realtime.txt`
		echo "Time to execute query: $time6"
		printf "$time6 " >> Matlab.txt
		printf "$time6 " >> Matlab2.txt
		rm realtime.txt

		#ISTRUZIONI PER SOMMA FLOAT
		#T1= 'echo $T6 + $time6 | bc -l'
		# T6=$(echo ''$T6'' + ''$time6'' | bc -l)

		#echo $time1 >> Report.txt
		Write_global "$verify1" "query_left" "A<> (forall (i:id_v) Vehicle(i).Start imply forall (k:id_v)Vehicle(k).Left)" "$time6"
		rm query_left.q
		# #query leaving
		# (
		# echo "A[]((exists (i:id_v) Vehicle(i).Leaving_Leader and" 
		# echo "forall (k:id_v)Vehicle(k).Following) imply forall "
		# echo "(j:id_v) Vehicle(j).Dissolving_Platoon)"
		# )>> Report.txt
		echo "Property_7 (Leaving)" >> Report.txt
		echo "A[]((exists (i:id_v) Vehicle(i).Leaving_Leader and forall (k:id_v) Vehicle(k).Following) imply forall (j:id_v) Vehicle(j).Dissolving_Platoon)" > query_leaving.q
		echo "A[]((exists (i:id_v) Vehicle(i).Leaving_Leader and forall (k:id_v) Vehicle(k).Following) imply forall (j:id_v) Vehicle(j).Dissolving_Platoon)" >> Log.txt
		#echo "verifying the property: A[]((exists (i:id_v) Vehicle(i).Leaving_Leader and forall (k:id_v) Vehicle(k).Following) imply forall (j:id_v) Vehicle(j).Dissolving_Platoon) ..."
		# verify1=$(verifyta -t0 -f tracefile Generated_model_$N.xml query_leaving.q)
		# time1=$(time verifyta -t0 -f tracefile Generated_model_$N.xml query_leaving.q)
		# #echo $verify1 >> Generated_trace_$N.txt
		# echo $verify1 >> Log.txt
		# time=${time1#*sys, } 
		# time7=${time% real*}

		verify1=$({ time verifyta -t0 -f tracefile Generated_model_$N.xml query_leaving.q; } 2>realtime.txt)
		time7=`cat realtime.txt`
		echo "Time to execute query: $time7"
		printf "$time7 " >> Matlab.txt
		printf "$time7 " >> Matlab2.txt
		rm realtime.txt

		#ISTRUZIONI PER SOMMA FLOAT
		#T1= 'echo $T1 + $time1 | bc -l'
		# T7=$(echo ''$T7'' + ''$time7'' | bc -l)

		#echo $time1 >> Report.txt
		Write_global "$verify1" "query_leaving" "A[]((exists (i:id_v) Vehicle(i).Leaving_Leader and forall (k:id_v) Vehicle(k).Following) imply forall (j:id_v) Vehicle(j).Dissolving_Platoon)" "$time7"
		rm query_leaving.q
		#query deadlock
		# echo "A[] not deadlock" >> Report.txt
		echo "Property_8 (Deadlock Free)" >> Report.txt
		echo "A[] not deadlock" > query_deadlock.q
		echo "A[] not deadlock" >> Log.txt
		#echo "verifying the property: A[] not deadlock ..."
		# verify1=$(verifyta -t0 -f tracefile Generated_model_$N.xml query_deadlock.q)
		# time1=$(time verifyta -t0 -f tracefile Generated_model_$N.xml query_deadlock.q)
		# #echo $verify1 >> Generated_trace_$N.txt
		# echo $verify1 >> Log.txt
		# time=${time1#*sys, } 
		# time8=${time% real*}

		verify1=$({ time verifyta -t0 -f tracefile Generated_model_$N.xml query_deadlock.q; } 2>realtime.txt)
		time8=`cat realtime.txt`
		echo "Time to execute query: $time8"
		printf "$time8 " >> Matlab.txt
		printf "$time8 " >> Matlab2.txt
		rm realtime.txt

		#ISTRUZIONI PER SOMMA FLOAT
		#T1= 'echo $T1 + $time1 | bc -l'
		# T8=$(echo ''$T8'' + ''$time8'' | bc -l)

		#echo $time1 >> Report.txt
		Write_global "$verify1" "query_deadlock" "A[] not deadlock" "$time8"
		rm query_deadlock.q
		# echo "------------------------------------------------------------------------------------------------------------------------------------------------" >> Report.txt
		
		# if [ $N -lt "5" ] 
		# then
		# # echo "                                                                N=2    N=3    N=4    N=5    N=6    N=7    N=8    N=9    N=10    Time elapsed" >> Report.txt
		# fi

		echo "" >> Report.txt
		echo "" >> Report.txt
		rm Generated_model_$N.xml
		

		if [ $N -ne $N_last ] 
			then
				printf "; " >> Matlab.txt
				printf "; " >> Matlab2.txt
		fi

		done

		echo "]" >> Matlab.txt
		echo "]" >> Matlab2.txt
		echo "" >> Matlab.txt
		echo "" >> Matlab.txt
		echo "" >> Matlab2.txt
		echo "" >> Matlab2.txt
		printf "ITER_$iteration" >> Matlab.txt
		printf "=ITER_$iteration'" >> Matlab.txt
		echo "" >> Matlab.txt
		echo "" >> Matlab.txt

		# echo "________________________________________________________________________________________________________________________________________________" >> Report.txt
		done
		
echo "AVARAGE = mean(TOTAL,3)" >> Matlab2.txt
echo "AVARAGE = AVARAGE'" >> Matlab2.txt
echo "ALL_ITER = squeeze(TOTAL(4:4, 8:8, :))" >> Matlab2.txt

