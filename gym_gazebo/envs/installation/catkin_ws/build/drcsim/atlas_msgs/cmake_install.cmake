# Install script for directory: /home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_msgs/msg" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorFeedback.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorManipulateFeedback.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorManipulateParams.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorPelvisServoParams.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorStandFeedback.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorStandParams.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorStepData.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorStepFeedback.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorStepParams.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorWalkFeedback.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasBehaviorWalkParams.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasCommand.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasPositionData.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasSimInterfaceCommand.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasSimInterfaceState.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/AtlasState.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/ControllerStatistics.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/ForceTorqueSensors.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/SModelRobotInput.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/SModelRobotOutput.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/SynchronizationStatistics.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/Test.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/msg/VRCScore.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_msgs/srv" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/srv/AtlasFilters.srv"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/srv/GetJointDamping.srv"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/srv/ResetControls.srv"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/srv/SetJointDamping.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_msgs/action" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/action/WalkDemo.action")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_msgs/msg" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/atlas_msgs/msg/WalkDemoAction.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/atlas_msgs/msg/WalkDemoActionGoal.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/atlas_msgs/msg/WalkDemoActionResult.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/atlas_msgs/msg/WalkDemoActionFeedback.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/atlas_msgs/msg/WalkDemoGoal.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/atlas_msgs/msg/WalkDemoResult.msg"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/atlas_msgs/msg/WalkDemoFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_msgs/cmake" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_msgs/catkin_generated/installspace/atlas_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/include/atlas_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/common-lisp/ros/atlas_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib/python2.7/dist-packages/atlas_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/lib/python2.7/dist-packages/atlas_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_msgs/catkin_generated/installspace/atlas_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_msgs/cmake" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_msgs/catkin_generated/installspace/atlas_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_msgs/cmake" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_msgs/catkin_generated/installspace/atlas_msgsConfig.cmake"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_msgs/catkin_generated/installspace/atlas_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_msgs" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

