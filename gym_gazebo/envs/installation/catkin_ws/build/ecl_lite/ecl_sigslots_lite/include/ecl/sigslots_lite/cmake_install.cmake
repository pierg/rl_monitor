# Install script for directory: /home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_lite/ecl_sigslots_lite/include/ecl/sigslots_lite

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/sigslots_lite" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_lite/ecl_sigslots_lite/include/ecl/sigslots_lite/signal.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_lite/ecl_sigslots_lite/include/ecl/sigslots_lite/utilities.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_lite/ecl_sigslots_lite/include/ecl/sigslots_lite/slot.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_lite/ecl_sigslots_lite/include/ecl/sigslots_lite/connect.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_lite/ecl_sigslots_lite/include/ecl/sigslots_lite/managers.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_lite/ecl_sigslots_lite/include/ecl/sigslots_lite/errors.hpp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

