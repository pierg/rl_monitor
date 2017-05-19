# Install script for directory: /home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test

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
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/drcsim_gazebo/test" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_publishers_hz.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_sandia_hands_publishers_hz.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_publishers_hz_gpu.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_sandia_hands_publishers_hz_gpu.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_sandia_hands_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_3_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/performance_test1.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_cheats_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_sandia_hands_cheats_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_cheats_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_cheats_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_3_cheats_rosapi.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_scoring.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_scoring.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_tricking_scoring.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_start_standup.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_start_standup.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_3_start_standup.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_gzlog_stop.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_gzlog_stop.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_3_gzlog_stop.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_gzlog_stop_longrun.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_gzlog_stop_longrun_zlib.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_dynamic_walking.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_dynamic_walking.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_3_dynamic_walking.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/multicamera_connection.test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_rosapi.yaml"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/multisense_sl_rosapi.yaml"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/sandia_hands_rosapi.yaml"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_cheats_rosapi.yaml"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/drc_vehicle_cheats_rosapi.yaml"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_rosapi.yaml"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/golf_cart_cheats_rosapi.yaml"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_arenas_start_testing.launch"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/atlas_arenas_logging.launch"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/ros_subscribers.launch"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/pub_atlas_command.launch"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/perf_test.launch"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/perf_test_local.launch"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_commander.launch"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_zlib_compression.launch"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/drcsim_gazebo/test" TYPE PROGRAM FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/ros_api_checker"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/run_gzstats.sh"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/run_pub_atlas_command.sh"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/run_recordmydesktop.sh"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/run_rosbag.sh"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/parse_logs.sh"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/meanvar.py"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_1_scoring_test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_scoring_test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_task_2_tricking_scoring_test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/gzlog_stop_checker.py"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/vrc_walking_test"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_gazebo/test/multicamera_subscriber"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

