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
before ( String preo,String o) : (call(* *.rlevent(..)) && args(o,preo) && !cflow(adviceexecution())) {

synchronized(_asp_rewardautomaton0.lock){

_cls_rewardautomaton0 _cls_inst = _cls_rewardautomaton0._get_cls_rewardautomaton0_inst();
_cls_inst.preo = preo;
_cls_inst.o = o;
_cls_inst._call(thisJoinPoint.getSignature().toString(), 0/*rlevent*/);
_cls_inst._call_all_filtered(thisJoinPoint.getSignature().toString(), 0/*rlevent*/);
}
}
}