package larva;


import SocketServerPackage.EchoServer;

import java.util.LinkedHashMap;
import java.io.PrintWriter;

public class _cls_rewardautomaton0 implements _callable{

public static PrintWriter pw; 
public static _cls_rewardautomaton0 root;

public static LinkedHashMap<_cls_rewardautomaton0,_cls_rewardautomaton0> _cls_rewardautomaton0_instances = new LinkedHashMap<_cls_rewardautomaton0,_cls_rewardautomaton0>();
static{
try{
RunningClock.start();
pw = new PrintWriter("/home/chalmers-internship/Gym_Torcs_Project/rl_monitor/monitor//output_rewardautomaton.txt");

root = new _cls_rewardautomaton0();
_cls_rewardautomaton0_instances.put(root, root);
  root.initialisation();
}catch(Exception ex)
{ex.printStackTrace();}
}

_cls_rewardautomaton0 parent; //to remain null - this class does not have a parent!
public static String preo;
public static String o;
int no_automata = 1;
 public int counter =0 ;

public static void initialize(){}
//inheritance could not be used because of the automatic call to super()
//when the constructor is called...we need to keep the SAME parent if this exists!

public _cls_rewardautomaton0() {
}

public void initialisation() {
}

public static _cls_rewardautomaton0 _get_cls_rewardautomaton0_inst() { synchronized(_cls_rewardautomaton0_instances){
 return root;
}
}

public boolean equals(Object o) {
 if ((o instanceof _cls_rewardautomaton0))
{return true;}
else
{return false;}
}

public int hashCode() {
return 0;
}

public void _call(String _info, int... _event){
synchronized(_cls_rewardautomaton0_instances){
_performLogic_reward(_info, _event);
}
}

public void _call_all_filtered(String _info, int... _event){
}

public static void _call_all(String _info, int... _event){

_cls_rewardautomaton0[] a = new _cls_rewardautomaton0[1];
synchronized(_cls_rewardautomaton0_instances){
a = _cls_rewardautomaton0_instances.keySet().toArray(a);}
for (_cls_rewardautomaton0 _inst : a)

if (_inst != null) _inst._call(_info, _event);
}

public void _killThis(){
try{
if (--no_automata == 0){
synchronized(_cls_rewardautomaton0_instances){
_cls_rewardautomaton0_instances.remove(this);}
}
else if (no_automata < 0)
{throw new Exception("no_automata < 0!!");}
}catch(Exception ex){ex.printStackTrace();}
}

int _state_id_reward = 4;

public void _performLogic_reward(String _info, int... _event) {

_cls_rewardautomaton0.pw.println("[reward]AUTOMATON::> reward("+") STATE::>"+ _string_reward(_state_id_reward, 0));
_cls_rewardautomaton0.pw.flush();

if (0==1){}
else if (_state_id_reward==1){
		if (1==0){}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isForward ())){
		EchoServer .setRewardForward ();
EchoServer .response ();
counter ++;

		_state_id_reward = 2;//moving to state forward
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isOffRoad ())){
		EchoServer .setRewardOffRoad ();
EchoServer .response ();
counter ++;

		_state_id_reward = 0;//moving to state offRoad
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardLimitRoad ();
EchoServer .response ();
counter ++;

		_state_id_reward = 3;//moving to state limitRoad
		_goto_reward(_info);
		}
}
else if (_state_id_reward==2){
		if (1==0){}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isDamage ())){
		EchoServer .setRewardDamage ();
EchoServer .response ();
counter ++;

		_state_id_reward = 1;//moving to state damage
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isForward ())){
		EchoServer .setRewardForward ();
EchoServer .response ();
counter ++;

		_state_id_reward = 2;//moving to state forward
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardLimitRoad ();
EchoServer .response ();
counter ++;

		_state_id_reward = 3;//moving to state limitRoad
		_goto_reward(_info);
		}
}
else if (_state_id_reward==4){
		if (1==0){}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .setReward ();
EchoServer .response ();
counter ++;

		_state_id_reward = 2;//moving to state forward
		_goto_reward(_info);
		}
}
else if (_state_id_reward==0){
		if (1==0){}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isDamage ())){
		EchoServer .setRewardDamage ();
EchoServer .response ();
counter ++;

		_state_id_reward = 1;//moving to state damage
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardOffRoadToLimitRoad ();
EchoServer .response ();
counter ++;

		_state_id_reward = 3;//moving to state limitRoad
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isOffRoad ())){
		EchoServer .setRewardOffRoad ();
EchoServer .response ();
counter ++;

		_state_id_reward = 0;//moving to state offRoad
		_goto_reward(_info);
		}
}
else if (_state_id_reward==3){
		if (1==0){}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isDamage ())){
		EchoServer .setRewardDamage ();
EchoServer .response ();
counter ++;

		_state_id_reward = 1;//moving to state damage
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isForward ())){
		EchoServer .setRewardLimitRoadToForward ();
EchoServer .response ();
counter ++;

		_state_id_reward = 2;//moving to state forward
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardLimitRoad ();
EchoServer .response ();
counter ++;

		_state_id_reward = 3;//moving to state limitRoad
		_goto_reward(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isOffRoad ())){
		EchoServer .setRewardOffRoad ();
EchoServer .response ();
counter ++;

		_state_id_reward = 0;//moving to state offRoad
		_goto_reward(_info);
		}
}
}

public void _goto_reward(String _info){
_cls_rewardautomaton0.pw.println("[reward]MOVED ON METHODCALL: "+ _info +" TO STATE::> " + _string_reward(_state_id_reward, 1));
_cls_rewardautomaton0.pw.flush();
}

public String _string_reward(int _state_id, int _mode){
switch(_state_id){
case 1: if (_mode == 0) return "damage"; else return "!!!SYSTEM REACHED BAD STATE!!! damage "+new _BadStateExceptionrewardautomaton().toString()+" ";
case 2: if (_mode == 0) return "forward"; else return "forward";
case 4: if (_mode == 0) return "start"; else return "start";
case 0: if (_mode == 0) return "offRoad"; else return "!!!SYSTEM REACHED BAD STATE!!! offRoad "+new _BadStateExceptionrewardautomaton().toString()+" ";
case 3: if (_mode == 0) return "limitRoad"; else return "limitRoad";
default: return "!!!SYSTEM REACHED AN UNKNOWN STATE!!!";
}
}

public boolean _occurredEvent(int[] _events, int event){
for (int i:_events) if (i == event) return true;
return false;
}
}