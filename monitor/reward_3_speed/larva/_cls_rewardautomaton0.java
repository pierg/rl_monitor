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
pw = new PrintWriter("/home/chalmers-internship/Gym_Torcs_Project/rl_monitor/monitor/reward_3_speed//output_rewardautomaton.txt");

root = new _cls_rewardautomaton0();
_cls_rewardautomaton0_instances.put(root, root);
  root.initialisation();
}catch(Exception ex)
{ex.printStackTrace();}
}

_cls_rewardautomaton0 parent; //to remain null - this class does not have a parent!
int no_automata = 2;

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
_performLogic_trackPos(_info, _event);
_performLogic_speed(_info, _event);
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

int _state_id_trackPos = 7;

public void _performLogic_trackPos(String _info, int... _event) {

_cls_rewardautomaton0.pw.println("[trackPos]AUTOMATON::> trackPos("+") STATE::>"+ _string_trackPos(_state_id_trackPos, 0));
_cls_rewardautomaton0.pw.flush();

if (0==1){}
else if (_state_id_trackPos==2){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_trackPos = 7;//moving to state start
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isStuck ())){
		EchoServer .setRewardStuck ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 3;//moving to state stuck
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isCenterRoad ())){
		EchoServer .setRewardCenterRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 5;//moving to state centerRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLeftOffRoad ())){
		EchoServer .setRewardLeftOffRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 1;//moving to state leftOffRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isRightOffRoad ())){
		EchoServer .setRewardRightOffRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 0;//moving to state rightOffRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardLimitRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 6;//moving to state limitRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_trackPos = 4;//moving to state default
		_goto_trackPos(_info);
		}
}
else if (_state_id_trackPos==4){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_trackPos = 7;//moving to state start
		_goto_trackPos(_info);
		}
}
else if (_state_id_trackPos==5){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_trackPos = 7;//moving to state start
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isDamage ())){
		EchoServer .setRewardDamage ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 2;//moving to state damage
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isCenterRoad ())){
		EchoServer .setRewardCenterRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 5;//moving to state centerRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardLimitRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 6;//moving to state limitRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_trackPos = 4;//moving to state default
		_goto_trackPos(_info);
		}
}
else if (_state_id_trackPos==3){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_trackPos = 7;//moving to state start
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isStuck ())){
		EchoServer .setRewardStuck ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 3;//moving to state stuck
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLeftOffRoad ())){
		EchoServer .setRewardFromStuckToLeftOffRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 1;//moving to state leftOffRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isRightOffRoad ())){
		EchoServer .setRewardFromStuckToRightOffRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 0;//moving to state rightOffRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_trackPos = 4;//moving to state default
		_goto_trackPos(_info);
		}
}
else if (_state_id_trackPos==7){
		if (1==0){}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .setRewardCenterRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 5;//moving to state centerRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_trackPos = 7;//moving to state start
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_trackPos = 4;//moving to state default
		_goto_trackPos(_info);
		}
}
else if (_state_id_trackPos==1){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_trackPos = 7;//moving to state start
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isStuck ())){
		EchoServer .setRewardStuck ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 3;//moving to state stuck
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isDamage ())){
		EchoServer .setRewardDamage ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 2;//moving to state damage
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardOffRoadToLimitRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 6;//moving to state limitRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLeftOffRoad ())){
		EchoServer .setRewardLeftOffRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 1;//moving to state leftOffRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_trackPos = 4;//moving to state default
		_goto_trackPos(_info);
		}
}
else if (_state_id_trackPos==0){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_trackPos = 7;//moving to state start
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isStuck ())){
		EchoServer .setRewardStuck ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 3;//moving to state stuck
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isDamage ())){
		EchoServer .setRewardDamage ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 2;//moving to state damage
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardOffRoadToLimitRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 6;//moving to state limitRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isRightOffRoad ())){
		EchoServer .setRewardRightOffRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 0;//moving to state rightOffRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_trackPos = 4;//moving to state default
		_goto_trackPos(_info);
		}
}
else if (_state_id_trackPos==6){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_trackPos = 7;//moving to state start
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isDamage ())){
		EchoServer .setRewardDamage ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 2;//moving to state damage
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isCenterRoad ())){
		EchoServer .setRewardLimitRoadToCenterRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 5;//moving to state centerRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLimitRoad ())){
		EchoServer .setRewardLimitRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 6;//moving to state limitRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isRightOffRoad ())){
		EchoServer .setRewardRightOffRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 0;//moving to state rightOffRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isLeftOffRoad ())){
		EchoServer .setRewardLeftOffRoad ();
EchoServer .propertyChecked ();

		_state_id_trackPos = 1;//moving to state leftOffRoad
		_goto_trackPos(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_trackPos = 4;//moving to state default
		_goto_trackPos(_info);
		}
}
}

public void _goto_trackPos(String _info){
_cls_rewardautomaton0.pw.println("[trackPos]MOVED ON METHODCALL: "+ _info +" TO STATE::> " + _string_trackPos(_state_id_trackPos, 1));
_cls_rewardautomaton0.pw.flush();
}

public String _string_trackPos(int _state_id, int _mode){
switch(_state_id){
case 2: if (_mode == 0) return "damage"; else return "!!!SYSTEM REACHED BAD STATE!!! damage "+new _BadStateExceptionrewardautomaton().toString()+" ";
case 4: if (_mode == 0) return "default"; else return "!!!SYSTEM REACHED BAD STATE!!! default "+new _BadStateExceptionrewardautomaton().toString()+" ";
case 5: if (_mode == 0) return "centerRoad"; else return "centerRoad";
case 3: if (_mode == 0) return "stuck"; else return "!!!SYSTEM REACHED BAD STATE!!! stuck "+new _BadStateExceptionrewardautomaton().toString()+" ";
case 1: if (_mode == 0) return "leftOffRoad"; else return "!!!SYSTEM REACHED BAD STATE!!! leftOffRoad "+new _BadStateExceptionrewardautomaton().toString()+" ";
case 7: if (_mode == 0) return "start"; else return "start";
case 0: if (_mode == 0) return "rightOffRoad"; else return "!!!SYSTEM REACHED BAD STATE!!! rightOffRoad "+new _BadStateExceptionrewardautomaton().toString()+" ";
case 6: if (_mode == 0) return "limitRoad"; else return "limitRoad";
default: return "!!!SYSTEM REACHED AN UNKNOWN STATE!!!";
}
}
int _state_id_speed = 11;

public void _performLogic_speed(String _info, int... _event) {

_cls_rewardautomaton0.pw.println("[speed]AUTOMATON::> speed("+") STATE::>"+ _string_speed(_state_id_speed, 0));
_cls_rewardautomaton0.pw.flush();

if (0==1){}
else if (_state_id_speed==8){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_speed = 11;//moving to state start
		_goto_speed(_info);
		}
}
else if (_state_id_speed==9){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_speed = 11;//moving to state start
		_goto_speed(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isTurning ())){
		EchoServer .setRewardTurning ();
EchoServer .propertyChecked ();

		_state_id_speed = 10;//moving to state turning
		_goto_speed(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .setRewardGoingStraight ();
EchoServer .propertyChecked ();

		_state_id_speed = 9;//moving to state goingStraight
		_goto_speed(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_speed = 8;//moving to state default
		_goto_speed(_info);
		}
}
else if (_state_id_speed==10){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_speed = 11;//moving to state start
		_goto_speed(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/)) && (EchoServer .isTurning ())){
		EchoServer .setRewardTurning ();
EchoServer .propertyChecked ();

		_state_id_speed = 10;//moving to state turning
		_goto_speed(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .setRewardTurning ();
EchoServer .propertyChecked ();

		_state_id_speed = 9;//moving to state goingStraight
		_goto_speed(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_speed = 8;//moving to state default
		_goto_speed(_info);
		}
}
else if (_state_id_speed==11){
		if (1==0){}
		else if ((_occurredEvent(_event,2/*reset*/))){
		EchoServer .reward =0 ;
EchoServer .propertyChecked ();

		_state_id_speed = 11;//moving to state start
		_goto_speed(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .setRewardGoingStraight ();
EchoServer .propertyChecked ();

		_state_id_speed = 9;//moving to state goingStraight
		_goto_speed(_info);
		}
		else if ((_occurredEvent(_event,0/*rlevent*/))){
		EchoServer .reward =0 ;
EchoServer .resetAgent ();

		_state_id_speed = 8;//moving to state default
		_goto_speed(_info);
		}
}
}

public void _goto_speed(String _info){
_cls_rewardautomaton0.pw.println("[speed]MOVED ON METHODCALL: "+ _info +" TO STATE::> " + _string_speed(_state_id_speed, 1));
_cls_rewardautomaton0.pw.flush();
}

public String _string_speed(int _state_id, int _mode){
switch(_state_id){
case 8: if (_mode == 0) return "default"; else return "!!!SYSTEM REACHED BAD STATE!!! default "+new _BadStateExceptionrewardautomaton().toString()+" ";
case 9: if (_mode == 0) return "goingStraight"; else return "goingStraight";
case 10: if (_mode == 0) return "turning"; else return "turning";
case 11: if (_mode == 0) return "start"; else return "start";
default: return "!!!SYSTEM REACHED AN UNKNOWN STATE!!!";
}
}

public boolean _occurredEvent(int[] _events, int event){
for (int i:_events) if (i == event) return true;
return false;
}
}