execute_process(COMMAND "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/qt_gui_core/qt_dotgraph/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/qt_gui_core/qt_dotgraph/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
