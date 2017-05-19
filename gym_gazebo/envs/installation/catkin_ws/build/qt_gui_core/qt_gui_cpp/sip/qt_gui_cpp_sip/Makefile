TARGET = "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib/python2.7/dist-packages/qt_gui_cpp/libqt_gui_cpp_sip".so
OFILES = siplibqt_gui_cpp_sipcmodule.o siplibqt_gui_cpp_sipQList0101qt_gui_cppPluginProvider.o siplibqt_gui_cpp_sipQList0101qt_gui_cppPluginDescriptor.o siplibqt_gui_cpp_sipQMap0100QString0100QString.o siplibqt_gui_cpp_sipqt_gui_cppSettings.o siplibqt_gui_cpp_sipqt_gui_cppRosPluginlibPluginProvider_ForPlugins.o siplibqt_gui_cpp_sipqt_gui_cppRosPluginlibPluginProvider_ForPluginProviders.o siplibqt_gui_cpp_sipqt_gui_cppRecursivePluginProvider.o siplibqt_gui_cpp_sipqt_gui_cppPluginDescriptor.o siplibqt_gui_cpp_sipqt_gui_cppPluginContext.o siplibqt_gui_cpp_sipqt_gui_cppPluginBridge.o siplibqt_gui_cpp_sipqt_gui_cppPlugin.o siplibqt_gui_cpp_sipqt_gui_cppGenericProxy.o siplibqt_gui_cpp_sipqt_gui_cppCompositePluginProvider.o siplibqt_gui_cpp_sipqt_gui_cppPluginProvider.o siplibqt_gui_cpp_sipqt_gui_cpp.o
HFILES = sipAPIlibqt_gui_cpp_sip.h 

CC = gcc
CXX = g++
LINK = g++
CPPFLAGS = -DNDEBUG -DQT_NO_DEBUG -DQT_CORE_LIB -DQT_GUI_LIB -I. -I/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/qt_gui_core/qt_gui_cpp/src/qt_gui_cpp_sip/../../include -I/opt/ros/indigo/include -I/usr/include -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -I/usr/share/qt4/mkspecs/default -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I/usr/X11R6/include
CFLAGS =  -g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security  -D_FORTIFY_SOURCE=2 -fPIC -O2 -Wall -W -D_REENTRANT
CXXFLAGS =  -g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security  -D_FORTIFY_SOURCE=2 -fPIC -O2 -Wall -W -D_REENTRANT
LFLAGS =  -Wl,-Bsymbolic-functions -Wl,-z,relro -Wl,-O1 -Wl,-rpath,"/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib" -shared  -Wl,-O1 -Wl,--version-script="/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib/python2.7/dist-packages/qt_gui_cpp/libqt_gui_cpp_sip".exp
LIBS = -L/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib -L/usr/lib -L/usr/X11R6/lib -lqt_gui_cpp /opt/ros/indigo/lib/libclass_loader.so /usr/lib/libPocoFoundation.so /usr/lib/x86_64-linux-gnu/libdl.so /opt/ros/indigo/lib/librosconsole.so /opt/ros/indigo/lib/librosconsole_log4cxx.so /opt/ros/indigo/lib/librosconsole_backend_interface.so /usr/lib/liblog4cxx.so /usr/lib/x86_64-linux-gnu/libboost_regex.so /opt/ros/indigo/lib/librostime.so /usr/lib/x86_64-linux-gnu/libboost_date_time.so /opt/ros/indigo/lib/libcpp_common.so /usr/lib/x86_64-linux-gnu/libboost_thread.so /usr/lib/x86_64-linux-gnu/libpthread.so /usr/lib/x86_64-linux-gnu/libconsole_bridge.so /opt/ros/indigo/lib/libroslib.so /opt/ros/indigo/lib/librospack.so /usr/lib/x86_64-linux-gnu/libpython2.7.so /usr/lib/x86_64-linux-gnu/libboost_filesystem.so /usr/lib/x86_64-linux-gnu/libboost_program_options.so /usr/lib/x86_64-linux-gnu/libboost_system.so /usr/lib/x86_64-linux-gnu/libtinyxml.so /usr/lib/x86_64-linux-gnu/libboost_filesystem.so /usr/lib/x86_64-linux-gnu/libboost_system.so -lQtCore -lQtGui
MOC = moc-qt4
.SUFFIXES: .c .o .cpp .cc .cxx .C


.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.C.o:
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

.c.o:
	$(CC) -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

all: $(TARGET)

$(OFILES): $(HFILES)

$(TARGET): $(OFILES)
	@echo '{ global: initlibqt_gui_cpp_sip; local: *; };' > "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib/python2.7/dist-packages/qt_gui_cpp/libqt_gui_cpp_sip".exp
	$(LINK) $(LFLAGS) -o $(TARGET) $(OFILES) $(LIBS)

install: $(TARGET)
	@test -d $(DESTDIR)/usr/lib/python2.7/dist-packages || mkdir -p $(DESTDIR)/usr/lib/python2.7/dist-packages
	cp -f $(TARGET) $(DESTDIR)/usr/lib/python2.7/dist-packages/$(TARGET)

clean:
	-rm -f $(TARGET)
	-rm -f siplibqt_gui_cpp_sipcmodule.o
	-rm -f siplibqt_gui_cpp_sipQList0101qt_gui_cppPluginProvider.o
	-rm -f siplibqt_gui_cpp_sipQList0101qt_gui_cppPluginDescriptor.o
	-rm -f siplibqt_gui_cpp_sipQMap0100QString0100QString.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppSettings.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppRosPluginlibPluginProvider_ForPlugins.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppRosPluginlibPluginProvider_ForPluginProviders.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppRecursivePluginProvider.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppPluginDescriptor.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppPluginContext.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppPluginBridge.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppPlugin.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppGenericProxy.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppCompositePluginProvider.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cppPluginProvider.o
	-rm -f siplibqt_gui_cpp_sipqt_gui_cpp.o
	-rm -f "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib/python2.7/dist-packages/qt_gui_cpp/libqt_gui_cpp_sip".exp
