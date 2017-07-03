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
  private static int propertiesNumber = 2;

  // Set the goals to achieve
  private static int goalSpeed = 90;       // Kmh
  private static int goalTrackPos = 0;     // middle of the lane

  // Internal parameters
  private static int fastSpeedPenalityIndex = 2;
  private static int slowSpeedPenalityIndex = 1;
  private static int factor = 1;         // multiplication factor for the reward function

  public static double sp_reward = 0;
  public static double dam_reward = 0;
  public static double trp_reward = 0;
  public static double oppa_reward = 0;
  public static double oppl_reward = 0;
  public static double oppr_reward = 0;
  public static double oppb_reward = 0;
  
  public static double reward;

  // Environnement datas
  public static double speedX;
  public static double angle;
  public static double trackPos;
  public static double damage;
  public static double track[];
  public static double opponents[];

  public static double speedX_pre;
  public static double angle_pre;
  public static double trackPos_pre;
  public static double damage_pre;
  public static double track_pre[];
  public static double opponents_pre[];

  // Lat action data
  public static double steer;
  public static double accel;
  public static double brake;

  private static int counter = 0;

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

  // Return a positive value propotional to the error of the speed from the Goal, penalizing if it's too fast
  private static double errorSpeed()
  {
    if (speedX >= goalSpeed)
    {
      return (speedX - goalSpeed)*fastSpeedPenalityIndex;
    }
    else
    {
      return (goalSpeed - speedX)*slowSpeedPenalityIndex;
    }
  }

  // Return a positive value propostional to the error fo the trackPos from the Goal
  private static double errorTrackPos()
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

  // Return a positive value propotional to the errors from the Goals
  private static double eGoals()
  {
    return factor*(errorTrackPos());
  }

  public static void setRewardLimitRoadToCenterRoad(){

    System.out.println("limit to center");

    trp_reward = 60 - eGoals();
  }


  public static void setRewardOffRoadToLimitRoad(){

    System.out.println("off to limit");

    trp_reward = 30 - eGoals();
  }

  public static void setRewardRightOffRoad(){

    System.out.println("rightOffRoad");

    trp_reward = -20 - 10*angle - eGoals();
  }

  public static void setRewardLeftOffRoad(){
    System.out.println("leftOffRoad");

    trp_reward = -20 + 10*angle - eGoals();
  }

  public static void setRewardCenterRoad(){
    trp_reward = 50 - eGoals();

    System.out.println("center");
  }

  public static void setRewardDamage(){
    trp_reward = -40 - eGoals();

    System.out.println("damage");
  }

  public static void setRewardLimitRoad(){
    trp_reward = 20 - eGoals();

    System.out.println("limitRoad");
  }

  public static void setRewardFromStuckToLeftOffRoad()
  {
    counter = 0;
    trp_reward = -20 + 10*angle - eGoals();

    System.out.println("leftOffRoad");
  }

  public static void setRewardFromStuckToRightOffRoad()
  {
    counter = 0;
    trp_reward = -20 - 10*angle - eGoals();
    System.out.println("rightOffRoad");
  }

  public static void setRewardStuck()
  {
    counter += 10;
    trp_reward = -40 - eGoals() - counter;
    System.out.println("stuck");
  }

  public static void setRewardGoingStraight()
  {
    System.out.println("straight");
  }

  public static void setRewardTurning()
  {
    System.out.println("turning");
  }

  public static boolean isCenterRoad(){
    return trackPos > -0.5 && trackPos < 0.5;
  }

  public static boolean isLimitRoad(){
    return Math.abs(trackPos) >= 0.5 && Math.abs(trackPos) < 1;
  }

  public static boolean isRightOffRoad(){
    return trackPos >= 1;
  }

  public static boolean isLeftOffRoad(){
    return trackPos <= -1;
  }

  public static boolean isDamage(){
    return damage > damage_pre;
  }

  public static boolean isStuck(){
    return (trackPos >= 1 || trackPos <= -1) && speedX < 10;
  }

  public static boolean isTurning(){
    return (track[9] < 50) && angle < 0.2 && angle > -0.2 && !isLeftOffRoad() && !isRightOffRoad();
  }

  public static void computeTotalReward(){
    reward = 0;
    reward += sp_reward;
    reward += dam_reward;
    reward += trp_reward;
    reward += oppa_reward;
    reward += oppl_reward;
    reward += oppr_reward;
    reward += oppb_reward;
  }

  public void rlevent() {}
  public void reset() { counter = 0; }

  public static void propertyChecked(){
    propertiesChecked++;
    System.out.println("prop : " + propertiesChecked);
    if(propertiesChecked == propertiesNumber){
      computeTotalReward();
      response();
    }
  }

  public static void response(){
    if(!isReset){
      out.println(reward);
    }
  }

  public static void resetAgent(){
    isReset = true;
    out.println("reset");
  }
}
