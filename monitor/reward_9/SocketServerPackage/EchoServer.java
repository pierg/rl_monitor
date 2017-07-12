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
public static int c_Speed_Stuck = 0;
public static int c_Speed_Turning = 0;
public static int c_Speed_GoingStraight = 0;
public static int c_Speed_start = 0;
public static int c_Speed_default = 0;
public static int c_Damage_damaged = 0;
public static int c_Damage_normal = 0;
public static int c_Damage_start = 0;
public static int c_Damage_default = 0;
public static double propertiesNumber = 7;
// Precision factor: from double to public static double
public static double FACTOR = 100;

// Set the goals to achieve
public static double goalSpeed = 90;        // Kmh
public static double goalSpeedTurning = 60; // Kmh
public static double goalTrackPos = 0;      // middle of the lane

// Sub-rewards
public static double speedX_rwd = 0;
public static double damage_rwd = 0;
public static double trackPos_rwd = 0;
public static double opponents_ahead_rwd = 0;
public static double opponents_left_rwd = 0;
public static double opponents_right_rwd = 0;
public static double opponents_back_rwd = 0;

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

public static double stuckCounter = 0;


public static boolean isDamaged(){
    return damage > damage_pre;
}

public static boolean isNormal(){
    return !isDamaged();
}

public static void rewardDamaged(){
    damage_rwd = -40;
}

public static void rewardNormal(){
    damage_rwd = 0;
}
/*start functions*/
// GLOBAL FUNCTIONS
public static boolean isRightOffRoad()
{
    return (trackPos <= -1.0);
}

public static boolean isLeftOffRoad()
{
    return (trackPos >= 1.0);
}

public static void computeTotalReward(){
    tot_reward =  0;
	tot_reward += speedX_rwd;
	tot_reward += damage_rwd;
	tot_reward += trackPos_rwd;
	tot_reward += opponents_ahead_rwd;
	tot_reward += opponents_left_rwd;
	tot_reward += opponents_right_rwd;
	tot_reward += opponents_back_rwd;
}
/*end functions*//*start functions*/
public static boolean isRightCarDetectedNearby(){
    int i;
    for(i = 13; i < 24; i++){
        if(opponents[i] < 3.0){
            return true;
        }
    }
    return false;
}

public static boolean isRightCarDetected(){
    int i;
    boolean res = false;
    for(i = 13; i < 24; i++){
        if(opponents[i] < 6.0 && opponents[i] >= 3.0){
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
        if(opponents[i] <= 10.0 && opponents[i] >= 6.0){
            res = true;
        }

        if(opponents[i] < 6.0){
            return false;
        }
    }
    return res;
}

public static boolean isRightFree(){
    int i;
    for(i = 13; i < 24; i++){
        if(opponents[i] <= 10.0 ){
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
    opponents_right_rwd = 0;
}

public static void rewardRightCarFar(){
    opponents_right_rwd = -10 + getNearestOpponentRightValue();
}

public static void rewardRightCar(){
    opponents_right_rwd = (-10 + getNearestOpponentRightValue())*2;
}

public static void rewardRightCarClose(){
    opponents_right_rwd = (-10 + getNearestOpponentRightValue())*4;
}
/*end functions*//*start functions*/
public static boolean isCarDetectedNearbyBehind(){
    int i;
    for(i = 22; i < 33; i++){
        if(opponents[i] < 3.0){
            return true;
        }
    }
    return false;
}

public static boolean isCarDetectedBehind(){
    int i;
    boolean res = false;
    for(i = 22; i < 33; i++){
        if(opponents[i] < 6.0 && opponents[i] >= 3.0){
            res = true;
        }

        if(opponents[i] < 3.0){
            return false;
        }
    }
    return res;
}

public static boolean isCarDetectedFarBehind(){
    int i;
    boolean res = false;
    for(i = 22; i < 33; i++){
        if(opponents[i] <= 15.0 && opponents[i] >= 6.0){
            res = true;
        }

        if(opponents[i] < 6.0){
            return false;
        }
    }
    return res;
}

public static boolean isFreeBehind(){
    int i;
    for(i = 22; i < 33; i++){
        if(opponents[i] <= 15.0 ){
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
    opponents_back_rwd = 0;
}

public static void rewardBehindCarFar(){
    opponents_back_rwd = -15 + getNearestOpponentBehindValue();
}

public static void rewardBehindCar(){
    opponents_back_rwd = (-15 + getNearestOpponentBehindValue())*2;
}

public static void rewardBehindCarClose(){
    opponents_back_rwd = (-15 + getNearestOpponentBehindValue())*4;
}
/*end functions*//*start functions*/
public static boolean isLeftCarDetectedNearby(){
    int i;
    for(i = 0; i < 36; i++){
        if(opponents[i] < 3.0){
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
        if(opponents[i] < 6.0 && opponents[i] >= 3.0){
            res =  true;
        }

        if(opponents[i] < 3.0){
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
        if(opponents[i] <= 10.0 && opponents[i] >= 6.0){
            res = true;
        }

        if(opponents[i] < 6.0){
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
        if(opponents[i] <= 0.1 ){
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
    opponents_left_rwd = 0;
}

public static void rewardLeftCarFar(){
    opponents_left_rwd = -10 + getNearestOpponentLeftValue();
}

public static void rewardLeftCar(){
    opponents_left_rwd = (-10 + getNearestOpponentLeftValue())*2;
}

public static void rewardLeftCarClose(){
    opponents_left_rwd = (-10 + getNearestOpponentLeftValue())*4;
}
/*end functions*//*start functions*/
public static boolean isFrontCarDetectedNearby(){
    int i;
    for(i = 4; i < 15; i++){
        if(opponents[i] < 3.0){
            return true;
        }
    }
    return false;
}

public static boolean isFrontCarDetected(){
    int i;
    boolean res = false;
    for(i = 4; i < 15; i++){
        if(opponents[i] < 6.0 && opponents[i] >= 3.0){
            res =  true;
        }

        if(opponents[i] < 3.0){
            return false;
        }
    }
    return res;
}

public static boolean isFrontCarDetectedFar(){
    int i;
    boolean res = false;
    for(i = 4; i < 15; i++){
        if(opponents[i] <= 15.0 && opponents[i] >= 6.0){
            res = true;
        }

        if(opponents[i] < 6.0){
            return false;
        }
    }
    return res;
}

public static boolean isFrontFree(){
    int i;
    for(i = 4; i < 15; i++){
        if(opponents[i] <= 15.0 ){
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
    opponents_ahead_rwd = 0;
}

public static void rewardFrontCarFar(){
    opponents_ahead_rwd = -15 + getNearestOpponentAheadValue();
}

public static void rewardFrontCar(){
    opponents_ahead_rwd = (-15 + getNearestOpponentAheadValue())*2;
}

public static void rewardFrontCarClose(){
    opponents_ahead_rwd = (-15 + getNearestOpponentAheadValue())*4;
}

/*end functions*//*start functions*/
// Track position guard functions
public static boolean isCenter()
{
    return (-0.5 <= trackPos && trackPos <= 0.5);
}

public static boolean isLimitRoad()
{   
    return ((-1.0 < trackPos && trackPos < -0.5) || (0.5 < trackPos && trackPos < 1.0));
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
    trackPos_rwd = 0 - errorTrackPos();
}

public static void rewardLeftOffRoad(){
    if(steer < 0.0){
        trackPos_rwd = -1 - errorTrackPos();
    }else{
        trackPos_rwd = -2 - errorTrackPos();
    }
}

public static void rewardRightOffRoad(){
    if(steer > 0.0){
        trackPos_rwd = -1 - errorTrackPos();
    }else{
        trackPos_rwd = -2 - errorTrackPos();
    }
}

public static void rewardCenter(){
    trackPos_rwd = 2 - errorTrackPos();
}
/*end functions*//*start functions*/
public static boolean isStuck()
{
    return stuckCounter >= 0.1 && speedX < 10.0;
}

public static boolean isTurning()
{
    return (angle > 0.6 || angle < -0.6) && !isStuck();
    //return (track[9] < 100.0) && angle < 0.2 && angle > -0.2 && !isLeftOffRoad() && !isRightOffRoad() && !isStuck();
}

public static boolean isGoingStraight()
{
    return !isStuck() && !isTurning();
}

public static void updateStuckCounter(){
    if (speedX < 10.0){
        stuckCounter = stuckCounter + 1;
    }
    else{
        stuckCounter = 0;
    }
}

public static double errorStraight(){
    if (goalSpeed >= speedX)
    {
        return goalSpeed - speedX;
    }
    else
    {
        return speedX - goalSpeed;
    }
}

public static double errorTurning(){
    if (goalSpeedTurning >= speedX)
    {
        return goalSpeedTurning - speedX;
    }
    else
    {
        return speedX - goalSpeedTurning;
    }
}

public static void rewardStuck()
{
    speedX_rwd = -2 ;
}

public static void rewardTurning()
{
    speedX_rwd = (-errorTurning() / 10) + 1;
}

public static void rewardStraight()
{
    speedX_rwd = (-errorStraight() / 10) + 1;
}
/*end functions*/
public static String getJSONCounters(){
	String json = "{\"names\" : [\"c_OpponentsRight_carToTheRight\",\"c_OpponentsRight_carCloseToTheRight\",\"c_OpponentsRight_rightFree\",\"c_OpponentsRight_carFarToTheRight\",\"c_OpponentsRight_start\",\"c_OpponentsRight_default\",\"c_OpponentsBehind_start\",\"c_OpponentsBehind_carCloseBehind\",\"c_OpponentsBehind_carBehind\",\"c_OpponentsBehind_carFarbehind\",\"c_OpponentsBehind_behindFree\",\"c_OpponentsBehind_default\",\"c_OpponentsLeft_carCloseToTheLeft\",\"c_OpponentsLeft_carToTheLeft\",\"c_OpponentsLeft_start\",\"c_OpponentsLeft_carFarToTheLeft\",\"c_OpponentsLeft_leftFree\",\"c_OpponentsLeft_default\",\"c_OpponentsAhead_start\",\"c_OpponentsAhead_carCloseAhead\",\"c_OpponentsAhead_carAhead\",\"c_OpponentsAhead_carFarAhead\",\"c_OpponentsAhead_frontFree\",\"c_OpponentsAhead_default\",\"c_TrackPos_leftOffRoad\",\"c_TrackPos_limitRoad\",\"c_TrackPos_centerRoad\",\"c_TrackPos_start\",\"c_TrackPos_rightOffRoad\",\"c_TrackPos_default\",\"c_Speed_Stuck\",\"c_Speed_Turning\",\"c_Speed_GoingStraight\",\"c_Speed_start\",\"c_Speed_default\",\"c_Damage_damaged\",\"c_Damage_normal\",\"c_Damage_start\",\"c_Damage_default\"], \"values\" : [" + c_OpponentsRight_carToTheRight + "," + c_OpponentsRight_carCloseToTheRight + "," + c_OpponentsRight_rightFree + "," + c_OpponentsRight_carFarToTheRight + "," + c_OpponentsRight_start + "," + c_OpponentsRight_default + "," + c_OpponentsBehind_start + "," + c_OpponentsBehind_carCloseBehind + "," + c_OpponentsBehind_carBehind + "," + c_OpponentsBehind_carFarbehind + "," + c_OpponentsBehind_behindFree + "," + c_OpponentsBehind_default + "," + c_OpponentsLeft_carCloseToTheLeft + "," + c_OpponentsLeft_carToTheLeft + "," + c_OpponentsLeft_start + "," + c_OpponentsLeft_carFarToTheLeft + "," + c_OpponentsLeft_leftFree + "," + c_OpponentsLeft_default + "," + c_OpponentsAhead_start + "," + c_OpponentsAhead_carCloseAhead + "," + c_OpponentsAhead_carAhead + "," + c_OpponentsAhead_carFarAhead + "," + c_OpponentsAhead_frontFree + "," + c_OpponentsAhead_default + "," + c_TrackPos_leftOffRoad + "," + c_TrackPos_limitRoad + "," + c_TrackPos_centerRoad + "," + c_TrackPos_start + "," + c_TrackPos_rightOffRoad + "," + c_TrackPos_default + "," + c_Speed_Stuck + "," + c_Speed_Turning + "," + c_Speed_GoingStraight + "," + c_Speed_start + "," + c_Speed_default + "," + c_Damage_damaged + "," + c_Damage_normal + "," + c_Damage_start + "," + c_Damage_default + "]}";
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
	c_Speed_Stuck = 0;
	c_Speed_Turning = 0;
	c_Speed_GoingStraight = 0;
	c_Speed_start = 0;
	c_Speed_default = 0;
	c_Damage_damaged = 0;
	c_Damage_normal = 0;
	c_Damage_start = 0;
	c_Damage_default = 0;
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
          } else if(inputLine.equals("rewards")){
            a.rewards();
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

  public static void rewards(){
    String jsonReward = "{\"names\":[\"speedX_rwd\", \"damage_rwd\", \"trackPos_rwd\", \"opponents_ahead_rwd\", \"opponents_left_rwd\", \"opponents_right_rwd\", \"opponents_back_rwd\"], ";
    jsonReward += "\"values\":[" + speedX_rwd + ", " + damage_rwd + "," + trackPos_rwd + "," + opponents_ahead_rwd + "," + opponents_left_rwd  + "," + opponents_right_rwd + "," + opponents_back_rwd + "]}";
    out.println(jsonReward);
  }

  public static void response(){
    out.println(tot_reward);
  }

  public static void resetAgent(){
    if(!isReset){
        out.println(getJSONCounters());
        isReset = true;
        resetCounters();
    }
  }
}
