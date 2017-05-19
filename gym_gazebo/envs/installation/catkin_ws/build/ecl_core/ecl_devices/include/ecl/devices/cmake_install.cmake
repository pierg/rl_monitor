# Install script for directory: /home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/devices" TYPE FILE FILES
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/macros.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/socket_client_pos.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/socket_connection_status.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/string.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/socket_server_pos.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/serial_w32.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/socket.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/ofile_pos.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/modes.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/serial_pos.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/shared_file.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/serial_parameters.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/ofile.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/ofile_w32.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/traits.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/console.hpp"
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/ecl_core/ecl_devices/include/ecl/devices/serial.hpp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/ecl_core/ecl_devices/include/ecl/devices/detail/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

