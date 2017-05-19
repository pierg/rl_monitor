# Install script for directory: /home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds

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
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/atlas.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/atlas_cpu_lidar.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/atlas_drc_vehicle_fire_hose.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/atlas_golf_cart_fire_hose.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_practice_task_1.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_practice_task_2.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_practice_task_3.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_practice_task_4.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_practice_task_5.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_practice_task_6.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_practice_task_7.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_practice_task_8.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/drc_vehicle.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/golf_cart.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/powerplant.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/qual_task_1.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/qual_task_1_stumps.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/qual_task_2.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/qual_task_3.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/qual_task_3_stumps.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/qual_task_4.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task1.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task2.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task3.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task4.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task5.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task6.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task7.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task8.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task9.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task10.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task11.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task12.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task13.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task14.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_final_task15.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_fire_hose.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_1.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_1_cpu_lidar.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_1_vehicle_start.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_2.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_2_cpu_lidar.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_2_mud_start.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_2_rubble_start.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_2_stumps.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_2_uneven_start.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_3.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_3_cpu_lidar.world;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds/vrc_task_3_firehose_start.world")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_model_resources/worlds" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/atlas.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/atlas_cpu_lidar.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/atlas_drc_vehicle_fire_hose.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/atlas_golf_cart_fire_hose.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_practice_task_1.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_practice_task_2.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_practice_task_3.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_practice_task_4.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_practice_task_5.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_practice_task_6.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_practice_task_7.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_practice_task_8.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/drc_vehicle.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/golf_cart.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/powerplant.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/qual_task_1.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/qual_task_1_stumps.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/qual_task_2.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/qual_task_3.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/qual_task_3_stumps.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/qual_task_4.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task1.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task2.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task3.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task4.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task5.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task6.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task7.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task8.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task9.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task10.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task11.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task12.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task13.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task14.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_final_task15.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_fire_hose.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_1.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_1_cpu_lidar.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_1_vehicle_start.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_2.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_2_cpu_lidar.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_2_mud_start.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_2_rubble_start.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_2_stumps.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_2_uneven_start.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_3.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_3_cpu_lidar.world"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/drcsim_model_resources/worlds/vrc_task_3_firehose_start.world"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

