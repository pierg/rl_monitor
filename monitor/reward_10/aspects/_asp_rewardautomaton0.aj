package aspects;

import SocketServerPackage.EchoServer;

import larva.*;
public aspect _asp_rewardautomaton0 {

public static Object lock = new Object();

boolean initialized = false;

after():(staticinitialization(*)){
if (!initialized){
	initialized = true;
	_cls_rewardautomaton0.initialize();
}
}
before () : (call(* *.rlevent(..)) && !cflow(adviceexecution())) {

synchronized(_asp_rewardautomaton0.lock){

_cls_rewardautomaton0 _cls_inst = _cls_rewardautomaton0._get_cls_rewardautomaton0_inst();
_cls_inst._call(thisJoinPoint.getSignature().toString(), 0/*rlevent*/);
_cls_inst._call_all_filtered(thisJoinPoint.getSignature().toString(), 0/*rlevent*/);
}
}
before () : (call(* *.reset(..)) && !cflow(adviceexecution())) {

synchronized(_asp_rewardautomaton0.lock){

_cls_rewardautomaton0 _cls_inst = _cls_rewardautomaton0._get_cls_rewardautomaton0_inst();
_cls_inst._call(thisJoinPoint.getSignature().toString(), 2/*reset*/);
_cls_inst._call_all_filtered(thisJoinPoint.getSignature().toString(), 2/*reset*/);
}
}
}