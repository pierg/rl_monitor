LARVA="../../larva-system"
JARS=../libraries
JAVA_VERSION=1.8
PORT=8800
CURRENT:=$(shell pwd)

compile:
	java -cp $(LARVA):. compiler.Compiler $(CURRENT)/rewardautomaton.lrv -o $(CURRENT)
	javac -target $(JAVA_VERSION) -cp $(JARS)/json-20160212.jar SocketServerPackage/EchoServer.java
	ajc -1.5 -cp $(JARS)/aspectjrt.jar:$(JARS)/json-20160212.jar:. -sourceroots .  > res.txt
	ajc -1.5 -cp $(JARS)/aspectjrt.jar:$(JARS)/json-20160212.jar:. -outxmlfile ./META-INF/aop.xml ./aspects/*.aj > res.txt

run:
	aj5 -cp $(JARS)/aspectjrt.jar:$(JARS)/json-20160212.jar:. SocketServerPackage.EchoServer $(PORT)

clean:
	rm -rf META-INF/ larva/ aspects/ output_policy.txt _diag_reward.txt
