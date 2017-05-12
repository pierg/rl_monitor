LARVA="../larva-system"
JAVA_VERSION=1.8
PORT=8800
CURRENT:=$(shell pwd)

compile:
	java -cp $(LARVA):. compiler.Compiler $(CURRENT)/rewardautomaton.lrv -o $(CURRENT)
	javac -target $(JAVA_VERSION) -cp /usr/share/java/json-20160212.jar SocketServerPackage/EchoServer.java
	ajc -1.5 -cp aspectjrt.jar:. -sourceroots .
	ajc -1.5 -cp aspectjrt.jar:. -outxmlfile ./META-INF/aop.xml ./aspects/*.aj

run:
	sudo aj5 -cp . SocketServerPackage.EchoServer $(PORT)

clean:
	rm -rf META-INF/ larva/ aspects/ output_policy.txt _diag_diaspora.txt
