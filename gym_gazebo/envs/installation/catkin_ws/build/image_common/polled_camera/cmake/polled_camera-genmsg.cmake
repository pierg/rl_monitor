# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "polled_camera: 0 messages, 1 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(polled_camera_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/image_common/polled_camera/srv/GetPolledImage.srv" NAME_WE)
add_custom_target(_polled_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "polled_camera" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/image_common/polled_camera/srv/GetPolledImage.srv" "sensor_msgs/RegionOfInterest"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(polled_camera
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/image_common/polled_camera/srv/GetPolledImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polled_camera
)

### Generating Module File
_generate_module_cpp(polled_camera
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polled_camera
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(polled_camera_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(polled_camera_generate_messages polled_camera_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/image_common/polled_camera/srv/GetPolledImage.srv" NAME_WE)
add_dependencies(polled_camera_generate_messages_cpp _polled_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polled_camera_gencpp)
add_dependencies(polled_camera_gencpp polled_camera_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polled_camera_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(polled_camera
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/image_common/polled_camera/srv/GetPolledImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polled_camera
)

### Generating Module File
_generate_module_lisp(polled_camera
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polled_camera
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(polled_camera_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(polled_camera_generate_messages polled_camera_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/image_common/polled_camera/srv/GetPolledImage.srv" NAME_WE)
add_dependencies(polled_camera_generate_messages_lisp _polled_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polled_camera_genlisp)
add_dependencies(polled_camera_genlisp polled_camera_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polled_camera_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(polled_camera
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/image_common/polled_camera/srv/GetPolledImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polled_camera
)

### Generating Module File
_generate_module_py(polled_camera
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polled_camera
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(polled_camera_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(polled_camera_generate_messages polled_camera_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/image_common/polled_camera/srv/GetPolledImage.srv" NAME_WE)
add_dependencies(polled_camera_generate_messages_py _polled_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(polled_camera_genpy)
add_dependencies(polled_camera_genpy polled_camera_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS polled_camera_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polled_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/polled_camera
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(polled_camera_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(polled_camera_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polled_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/polled_camera
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(polled_camera_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(polled_camera_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polled_camera)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polled_camera\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/polled_camera
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(polled_camera_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(polled_camera_generate_messages_py std_msgs_generate_messages_py)
endif()
