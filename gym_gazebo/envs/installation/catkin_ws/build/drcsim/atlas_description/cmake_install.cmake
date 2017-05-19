# Install script for directory: /home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_description/catkin_generated/installspace/atlas_description.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_description/cmake" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_description/catkin_generated/installspace/atlas_descriptionConfig.cmake"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_description/catkin_generated/installspace/atlas_descriptionConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_description" TYPE FILE FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_description" TYPE DIRECTORY FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/urdf"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/meshes"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/meshes_v3"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/meshes_v4"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/meshes_unplugged"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/materials"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/robots"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/raw"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_gazebo_standalone_models")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share" TYPE DIRECTORY FILES "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/drcsim/atlas_description/drcsim_gazebo_standalone_models")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/atlas_description" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/model.config"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/dummy.urdf"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_gazebo_standalone_models/atlas_description/meshes;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_gazebo_standalone_models/atlas_description/meshes_v3;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_gazebo_standalone_models/atlas_description/meshes_v4;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_gazebo_standalone_models/atlas_description/meshes_unplugged;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_gazebo_standalone_models/atlas_description/materials")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/share/drcsim_gazebo_standalone_models/atlas_description" TYPE DIRECTORY FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/meshes"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/meshes_v3"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/meshes_v4"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/meshes_unplugged"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/atlas_description/materials"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

