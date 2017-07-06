/*
 * Copyright (c) 2013, Oracle and/or its affiliates. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *   - Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *
 *   - Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 *   - Neither the name of Oracle or the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 * IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package SocketServerPackage;

import java.net.*;
import java.io.*;
import java.util.*;
import org.json.*;

public class EchoServer {
  static PrintWriter out;
  private static boolean isReset;
  private static int propertiesChecked = 0;

  public static int c_OpponentsRight_carToTheRight = 0;
public static int c_OpponentsRight_carCloseToTheRight = 0;
public static int c_OpponentsRight_rightFree = 0;
public static int c_OpponentsRight_carFarToTheRight = 0;
public static int c_OpponentsRight_start = 0;
public static int c_OpponentsRight_default = 0;
public static int c_OpponentsBehind_start = 0;
public static int c_OpponentsBehind_carCloseBehind = 0;
public static int c_OpponentsBehind_carBehind = 0;
public static int c_OpponentsBehind_carFarbehind = 0;
public static int c_OpponentsBehind_behindFree = 0;
public static int c_OpponentsBehind_default = 0;
public static int c_OpponentsLeft_carCloseToTheLeft = 0;
public static int c_OpponentsLeft_carToTheLeft = 0;
public static int c_OpponentsLeft_start = 0;
public static int c_OpponentsLeft_carFarToTheLeft = 0;
public static int c_OpponentsLeft_leftFree = 0;
public static int c_OpponentsLeft_default = 0;
public static int c_OpponentsAhead_start = 0;
public static int c_OpponentsAhead_carCloseAhead = 0;
public static int c_OpponentsAhead_carAhead = 0;
public static int c_OpponentsAhead_carFarAhead = 0;
public static int c_OpponentsAhead_frontFree = 0;
public static int c_OpponentsAhead_default = 0;
public static int c_TrackPos_leftOffRoad = 0;
public static int c_TrackPos_limitRoad = 0;
public static int c_TrackPos_centerRoad = 0;
public static int c_TrackPos_start = 0;
public static int c_TrackPos_rightOffRoad = 0;
public static int c_TrackPos_default = 0;
public static int c_Damage_damaged = 0;
public static int c_Damage_normal = 0;
public static int c_Damage_start = 0;
public static int c_Damage_default = 0;
public static int c_Speed_Stuck = 0;
public static int c_Speed_Turning = 0;
public static int c_Speed_GoingStraight = 0;
public static int c_Speed_start = 0;
public static int c_Speed_default = 0;
public static double propertiesNumber = 7;
// Precision factor: from double to public static double
public static double FACTOR = 100;

// Set the goals to achieve
public static double goalSpeed = 90;       // Kmh
public static double goalTrackPos = 0;     // middle of the lane

// Sub-rewards
public static double sp_reward = 0;
public static double dam_reward = 0;
public static double trp_reward = 0;
public static double oppa_reward = 0;
public static double oppl_reward = 0;
public static double oppr_reward = 0;
public static double oppb_reward = 0;

// Reward cumulative returned
public static double tot_reward;

/*start environment values*/
// Observation values
public static double speedX;
public static double angle;
public static double trackPos;
public static double damage;
public static double track[];
public static double opponents[];

// Previous observation values
public static double speedX_pre;
public static double angle_pre;
public static double trackPos_pre;
public static double damage_pre;
public static double track_pre[];
public static double opponents_pre[];

// Action values
public static double steer;
public static double accel;
public static double brake;
/*end environment values*/



public static double nearestOpponentRight;

public static double nearestOpponentBehind;

public static double nearestOpponentLeft;

public static double nearestOpponentAhead;

public static boolean isDamaged(){
    return damage > damage_pre;
}

public static boolean isNormal(){
    return !isDamaged();
}

public static void rewardDamaged(){
    dam_reward = -40;
}

public static void rewardNormal(){
    dam_reward = 0;
}public static double counter = 0;


/*start functions*/
// GLOBAL FUNCTIONS
public static boolean isRightOffRoad()
{
    return (trackPos <= -100.0);
}

public static boolean isLeftOffRoad()
{
    return (trackPos >= 100.0);
}

public static void computeTotalReward(){
    tot_reward = 0;
	tot_reward += sp_reward;
	tot_reward += dam_reward;
	tot_reward += trp_reward;
	tot_reward += oppa_reward;
	tot_reward += oppl_reward;
	tot_reward += oppr_reward;
	tot_reward += oppb_reward;
}
/*end functions*//*start functions*/
public static boolean isRightCarDetectedNearby(){
    int i;
    for(i = 13; i < 24; i++){
        if(opponents[i] < 300.0){
            return true;
        }
    }
    return false;
}

public static boolean isRightCarDetected(){
    int i;
    boolean res = false;
    for(i = 13; i < 24; i++){
        if(opponents[i] < 600.0 && opponents[i] >= 600.0){
            res =  true;
        }

        if(opponents[i] < 3.0){
            return false;
        }
    }
    return res;
}

public static boolean isRightCarDetectedFar(){
    int i;
    boolean res = false;
    for(i = 13; i < 24; i++){
        if(opponents[i] <= 1000.0 && opponents[i] >= 1000.0){
            res = true;
        }

        if(opponents[i] < 600.0){
            return false;
        }
    }
    return res;
}

public static boolean isRightFree(){
    int i;
    for(i = 13; i < 24; i++){
        if(opponents[i] <= 1000.0 ){
            return false;
        }
    }
    return true;
}

public static double getNearestOpponentRightValue(){
    int i;
    nearestOpponentRight = 200;
    for(i = 13; i < 24; i++){
        if(opponents[i] < nearestOpponentRight){
            nearestOpponentRight = opponents[i];
        }
    }
    return nearestOpponentRight;
}

public static void rewardRightFree(){
    oppr_reward = 0;
}

public static void rewardRightCarFar(){
    oppr_reward = -10 + getNearestOpponentRightValue();
}

public static void rewardRightCar(){
    oppr_reward = (-10 + getNearestOpponentRightValue())*2;
}

public static void rewardRightCarClose(){
    oppr_reward = (-10 + getNearestOpponentRightValue())*4;
}
/*end functions*//*start functions*/
public static boolean isCarDetectedNearbyBehind(){
    int i;
    for(i = 22; i < 33; i++){
        if(opponents[i] < 300.0){
            return true;
        }
    }
    return false;
}

public static boolean isCarDetectedBehind(){
    int i;
    boolean res = false;
    for(i = 22; i < 33; i++){
        if(opponents[i] < 600.0 && opponents[i] >= 600.0){
            res = true;
        }

        if(opponents[i] < 300.0){
            return false;
        }
    }
    return res;
}

public static boolean isCarDetectedFarBehind(){
    int i;
    boolean res = false;
    for(i = 22; i < 33; i++){
        if(opponents[i] <= 1500.0 && opponents[i] >= 1500.0){
            res = true;
        }

        if(opponents[i] < 600.0){
            return false;
        }
    }
    return res;
}

public static boolean isFreeBehind(){
    int i;
    for(i = 22; i < 33; i++){
        if(opponents[i] <= 1500.0 ){
            return false;
        }
    }
    return true;
}


public static double getNearestOpponentBehindValue(){
    int i;
    nearestOpponentBehind = 200;
    for(i = 22; i < 33; i++){
        if(opponents[i] < nearestOpponentBehind){
            nearestOpponentBehind = opponents[i];
        }
    }
    return nearestOpponentBehind;
}

public static void rewardBehindFree(){
    oppb_reward = 0;
}

public static void rewardBehindCarFar(){
    oppb_reward = -15 + getNearestOpponentBehindValue();
}

public static void rewardBehindCar(){
    oppb_reward = (-15 + getNearestOpponentBehindValue())*2;
}

public static void rewardBehindCarClose(){
    oppb_reward = (-15 + getNearestOpponentBehindValue())*4;
}
/*end functions*//*start functions*/
public static boolean isLeftCarDetectedNearby(){
    int i;
    for(i = 0; i < 36; i++){
        if(opponents[i] < 300.0){
            return true;
        }
        if(i == 5){
            i = 30;
        }
    }
    return false;
}

public static boolean isLeftCarDetected(){
    int i;
    boolean res = false;
    for(i = 0; i < 36; i++){
        if(opponents[i] < 600.0 && opponents[i] >= 600.0){
            res =  true;
        }

        if(opponents[i] < 300.0){
            return false;
        }

        if(i == 5){
            i = 30;
        }
    }
    return res;
}

public static boolean isLeftCarDetectedFar(){
    int i;
    boolean res = false;
    for(i = 0; i < 36; i++){
        if(opponents[i] <= 1000.0 && opponents[i] >= 1000.0){
            res = true;
        }

        if(opponents[i] < 600.0){
            return false;
        }

        if(i == 5){
            i = 30;
        }
    }

    return res;
}

public static boolean isLeftFree(){
    int i;
    for(i = 0; i < 36; i++){
        if(opponents[i] <= 10.0 ){
            return false;
        }
        if(i == 5){
            i = 30;
        }
    }
    return true;
}


public static double getNearestOpponentLeftValue(){
    int i;
    nearestOpponentLeft = 200;
    for(i = 0; i < 36; i++){
        if(opponents[i] < nearestOpponentLeft){
            nearestOpponentLeft = opponents[i];
        }
        if(i == 5){
            i = 30;
        }
    }
    return nearestOpponentLeft;
}

public static void rewardLeftFree(){
    oppl_reward = 0;
}

public static void rewardLeftCarFar(){
    oppl_reward = -10 + getNearestOpponentLeftValue();
}

public static void rewardLeftCar(){
    oppl_reward = (-10 + getNearestOpponentLeftValue())*2;
}

public static void rewardLeftCarClose(){
    oppl_reward = (-10 + getNearestOpponentLeftValue())*4;
}
/*end functions*//*start functions*/
public static boolean isFrontCarDetectedNearby(){
    int i;
    for(i = 4; i < 15; i++){
        if(opponents[i] < 300.0){
            return true;
        }
    }
    return false;
}

public static boolean isFrontCarDetected(){
    int i;
    boolean res = false;
    for(i = 4; i < 15; i++){
        if(opponents[i] < 600.0 && opponents[i] >= 600.0){
            res =  true;
        }

        if(opponents[i] < 300.0){
            return false;
        }
    }
    return res;
}

public static boolean isFrontCarDetectedFar(){
    int i;
    boolean res = false;
    for(i = 4; i < 15; i++){
        if(opponents[i] <= 1500.0 && opponents[i] >= 1500.0){
            res = true;
        }

        if(opponents[i] < 600.0){
            return false;
        }
    }
    return res;
}

public static boolean isFrontFree(){
    int i;
    for(i = 4; i < 15; i++){
        if(opponents[i] <= 1500.0 ){
            return false;
        }
    }
    return true;
}

public static double getNearestOpponentAheadValue(){
    int i;
    nearestOpponentAhead = 200;
    for(i = 4; i < 15; i++){
        if(opponents[i] < nearestOpponentAhead){
            nearestOpponentAhead = opponents[i];
        }
    }
    return nearestOpponentAhead;
}

public static void rewardFrontFree(){
    oppa_reward = 0;
}

public static void rewardFrontCarFar(){
    oppa_reward = -15 + getNearestOpponentAheadValue();
}

public static void rewardFrontCar(){
    oppa_reward = (-15 + getNearestOpponentAheadValue())*2;
}

public static void rewardFrontCarClose(){
    oppa_reward = (-15 + getNearestOpponentAheadValue())*4;
}

/*end functions*//*start functions*/
// Track position guard functions
public static boolean isCenter()
{
    return (-50.0 <= trackPos && trackPos <= 50.0);
}

public static boolean isLimitRoad()
{   
    return ((-100.0 < trackPos && trackPos < -100.0) || (100.0 < trackPos && trackPos < 100.0));
}

// Return a positive value propostional to the error fo the trackPos from the Goal
public static double errorTrackPos()
{
    if (trackPos >= goalTrackPos)
    {
        return (trackPos - goalTrackPos);
    }
    else
    {
        return (goalTrackPos - trackPos);
    }
}


public static void rewardLimitRoad(){
    trp_reward = -10 * errorTrackPos();
}

public static void rewardLeftOffRoad(){
    trp_reward = -20 * errorTrackPos();
}

public static void rewardRightOffRoad(){
    trp_reward = -20 * errorTrackPos();
}

public static void rewardCenter(){
    trp_reward = +20 * errorTrackPos();
}
/*end functions*//*start functions*/
public static boolean isStuck()
{
    return (trackPos >= 100.0 || trackPos <= -100.0) && speedX < 100.0;
}

public static boolean isTurning()
{
    return (track[9] < 9.0) && angle < 9.0 && angle > -9.0 && !isLeftOffRoad() && !isRightOffRoad() && !isStuck();
}

public static boolean isGoingStraight()
{
    return !isStuck() && !isTurning();
}

public static void rewardStuck()
{
    counter++;
    sp_reward = -10 * counter;
}

public static void rewardTurning()
{
    // TODO
    counter = 0;
    sp_reward = 10;
}

public static void rewardStraight()
{
    counter = 0;
    sp_reward = 10;
}
/*end functions*/
public static String getJSONCounters(){
	String json = "{\"names\" : [\"c_OpponentsRight_carToTheRight\",\"c_OpponentsRight_carCloseToTheRight\",\"c_OpponentsRight_rightFree\",\"c_OpponentsRight_carFarToTheRight\",\"c_OpponentsRight_start\",\"c_OpponentsRight_default\",\"c_OpponentsBehind_start\",\"c_OpponentsBehind_carCloseBehind\",\"c_OpponentsBehind_carBehind\",\"c_OpponentsBehind_carFarbehind\",\"c_OpponentsBehind_behindFree\",\"c_OpponentsBehind_default\",\"c_OpponentsLeft_carCloseToTheLeft\",\"c_OpponentsLeft_carToTheLeft\",\"c_OpponentsLeft_start\",\"c_OpponentsLeft_carFarToTheLeft\",\"c_OpponentsLeft_leftFree\",\"c_OpponentsLeft_default\",\"c_OpponentsAhead_start\",\"c_OpponentsAhead_carCloseAhead\",\"c_OpponentsAhead_carAhead\",\"c_OpponentsAhead_carFarAhead\",\"c_OpponentsAhead_frontFree\",\"c_OpponentsAhead_default\",\"c_TrackPos_leftOffRoad\",\"c_TrackPos_limitRoad\",\"c_TrackPos_centerRoad\",\"c_TrackPos_start\",\"c_TrackPos_rightOffRoad\",\"c_TrackPos_default\",\"c_Damage_damaged\",\"c_Damage_normal\",\"c_Damage_start\",\"c_Damage_default\",\"c_Speed_Stuck\",\"c_Speed_Turning\",\"c_Speed_GoingStraight\",\"c_Speed_start\",\"c_Speed_default\"], \"values\" : [" + c_OpponentsRight_carToTheRight + "," + c_OpponentsRight_carCloseToTheRight + "," + c_OpponentsRight_rightFree + "," + c_OpponentsRight_carFarToTheRight + "," + c_OpponentsRight_start + "," + c_OpponentsRight_default + "," + c_OpponentsBehind_start + "," + c_OpponentsBehind_carCloseBehind + "," + c_OpponentsBehind_carBehind + "," + c_OpponentsBehind_carFarbehind + "," + c_OpponentsBehind_behindFree + "," + c_OpponentsBehind_default + "," + c_OpponentsLeft_carCloseToTheLeft + "," + c_OpponentsLeft_carToTheLeft + "," + c_OpponentsLeft_start + "," + c_OpponentsLeft_carFarToTheLeft + "," + c_OpponentsLeft_leftFree + "," + c_OpponentsLeft_default + "," + c_OpponentsAhead_start + "," + c_OpponentsAhead_carCloseAhead + "," + c_OpponentsAhead_carAhead + "," + c_OpponentsAhead_carFarAhead + "," + c_OpponentsAhead_frontFree + "," + c_OpponentsAhead_default + "," + c_TrackPos_leftOffRoad + "," + c_TrackPos_limitRoad + "," + c_TrackPos_centerRoad + "," + c_TrackPos_start + "," + c_TrackPos_rightOffRoad + "," + c_TrackPos_default + "," + c_Damage_damaged + "," + c_Damage_normal + "," + c_Damage_start + "," + c_Damage_default + "," + c_Speed_Stuck + "," + c_Speed_Turning + "," + c_Speed_GoingStraight + "," + c_Speed_start + "," + c_Speed_default + "]}";
	return json;
}
public static void resetCounters(){
	c_OpponentsRight_carToTheRight = 0;
	c_OpponentsRight_carCloseToTheRight = 0;
	c_OpponentsRight_rightFree = 0;
	c_OpponentsRight_carFarToTheRight = 0;
	c_OpponentsRight_start = 0;
	c_OpponentsRight_default = 0;
	c_OpponentsBehind_start = 0;
	c_OpponentsBehind_carCloseBehind = 0;
	c_OpponentsBehind_carBehind = 0;
	c_OpponentsBehind_carFarbehind = 0;
	c_OpponentsBehind_behindFree = 0;
	c_OpponentsBehind_default = 0;
	c_OpponentsLeft_carCloseToTheLeft = 0;
	c_OpponentsLeft_carToTheLeft = 0;
	c_OpponentsLeft_start = 0;
	c_OpponentsLeft_carFarToTheLeft = 0;
	c_OpponentsLeft_leftFree = 0;
	c_OpponentsLeft_default = 0;
	c_OpponentsAhead_start = 0;
	c_OpponentsAhead_carCloseAhead = 0;
	c_OpponentsAhead_carAhead = 0;
	c_OpponentsAhead_carFarAhead = 0;
	c_OpponentsAhead_frontFree = 0;
	c_OpponentsAhead_default = 0;
	c_TrackPos_leftOffRoad = 0;
	c_TrackPos_limitRoad = 0;
	c_TrackPos_centerRoad = 0;
	c_TrackPos_start = 0;
	c_TrackPos_rightOffRoad = 0;
	c_TrackPos_default = 0;
	c_Damage_damaged = 0;
	c_Damage_normal = 0;
	c_Damage_start = 0;
	c_Damage_default = 0;
	c_Speed_Stuck = 0;
	c_Speed_Turning = 0;
	c_Speed_GoingStraight = 0;
	c_Speed_start = 0;
	c_Speed_default = 0;
}


  public static void main(String[] args) throws IOException {

    if (args.length != 1) {
      System.err.println("Usage: java EchoServer <port number>");
      System.exit(1);
    }

    int portNumber = Integer.parseInt(args[0]);


    try {
      ServerSocket serverSocket = new ServerSocket(Integer.parseInt(args[0]));
      while(true){
        Socket clientSocket = serverSocket.accept();
        out = new PrintWriter(clientSocket.getOutputStream(), true);
        BufferedReader in = new BufferedReader(
          new InputStreamReader(clientSocket.getInputStream()));

        String inputLine;

        while ((inputLine = in.readLine()) != null) {
          isReset = false;
          propertiesChecked = 0;

          EchoServer a = new EchoServer();
          if(inputLine.equals("reset")){
            a.reset();
            continue;
          }

          prepareResponse(inputLine);

          List<String> list = new ArrayList<String>(Arrays.asList(inputLine.split(";")));
          a.rlevent();
        }
      }
    } catch (IOException e) {
      System.out.println("Exception caught when trying to listen on port "
        + portNumber + " or listening for a connection");
      System.out.println(e.getMessage());
    }
  }

  /**
   *  Get datas from environnement with JSON message
   */
  public static void prepareResponse(String message){
    JSONObject obj = new JSONObject(message);
    JSONObject obs = (JSONObject)obj.get("obs");
    JSONObject obs_pre = (JSONObject)obj.get("obs_pre");
    JSONObject action = (JSONObject)obj.get("action");

    JSONArray jsonTrack = (JSONArray)obs.get("track");
    JSONArray jsonTrack_pre = (JSONArray)obs_pre.get("track");
    JSONArray jsonOpponents = (JSONArray)obs.get("opponents");
    JSONArray jsonOpponents_pre = (JSONArray)obs_pre.get("opponents");

    track = new double[jsonTrack.length()];
    track_pre = new double[jsonTrack.length()];
    opponents = new double[jsonOpponents.length()];
    opponents_pre = new double[jsonOpponents.length()];

    for (int i = 0; i < jsonTrack.length(); i++) {
      track[i] = jsonTrack.getDouble(i);
      track_pre[i] = jsonTrack_pre.getDouble(i);
    }

    for (int i = 0; i < jsonOpponents.length(); i++) {
      opponents[i] = jsonOpponents.getDouble(i);
      opponents_pre[i] = jsonOpponents_pre.getDouble(i);
    }    

    speedX = obs.getDouble("speedX");
    angle = obs.getDouble("angle");
    trackPos = obs.getDouble("trackPos");
    damage = obs.getDouble("damage");

    speedX_pre = obs_pre.getDouble("speedX");
    angle_pre = obs_pre.getDouble("angle");
    trackPos_pre = obs_pre.getDouble("trackPos");
    damage_pre = obs_pre.getDouble("damage");

    steer = action.getDouble("steer");
    accel = action.getDouble("accel");
    brake = action.getDouble("brake");
  }


  public void rlevent() {}
  public void reset() {}

  public static void propertyChecked(){
    propertiesChecked++;
    if(propertiesChecked == propertiesNumber){
      computeTotalReward();
      response();
    }
  }

  public static void response(){
    out.println(tot_reward);
  }

  public static void resetAgent(){
    isReset = true;
    out.println(getJSONCounters());
    resetCounters();
  }
}
