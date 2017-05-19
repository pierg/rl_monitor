# Install script for directory: /home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/msg" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/BumperEvent.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/CliffEvent.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/DigitalOutput.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/ExternalPower.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/Led.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/PowerSystemEvent.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/SensorState.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/VersionInfo.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/ControllerInfo.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/ButtonEvent.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/DigitalInputEvent.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/DockInfraRed.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/KeyboardInput.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/MotorPower.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/RobotStateEvent.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/Sound.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/ScanAngle.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/msg/WheelDropEvent.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/action" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/action/AutoDocking.action")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/msg" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/kobuki_msgs/msg/AutoDockingAction.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/kobuki_msgs/msg/AutoDockingActionGoal.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/kobuki_msgs/msg/AutoDockingActionResult.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/kobuki_msgs/msg/AutoDockingActionFeedback.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/kobuki_msgs/msg/AutoDockingGoal.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/kobuki_msgs/msg/AutoDockingResult.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/kobuki_msgs/msg/AutoDockingFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/include/kobuki_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/common-lisp/ros/kobuki_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib/python2.7/dist-packages/kobuki_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib/python2.7/dist-packages/kobuki_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs/cmake" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgsConfig.cmake"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/kobuki_msgs/catkin_generated/installspace/kobuki_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kobuki_msgs" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/kobuki_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

