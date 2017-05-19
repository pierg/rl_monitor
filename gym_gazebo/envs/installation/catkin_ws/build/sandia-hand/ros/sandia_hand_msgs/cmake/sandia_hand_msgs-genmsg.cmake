# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sandia_hand_msgs: 10 messages, 6 services")

set(MSG_I_FLAGS "-Isandia_hand_msgs:/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sandia_hand_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/CalFingerState.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/CalFingerState.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawMoboState.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawMoboState.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/GetParameters.srv" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/GetParameters.srv" "sandia_hand_msgs/Parameter"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RelativeJointCommands.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RelativeJointCommands.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetParameters.srv" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetParameters.srv" "sandia_hand_msgs/Parameter"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerState.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerState.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspSrv.srv" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspSrv.srv" "sandia_hand_msgs/SimpleGrasp"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawPalmState.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawPalmState.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetJointLimitPolicy.srv" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetJointLimitPolicy.srv" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspWithSlew.srv" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspWithSlew.srv" "sandia_hand_msgs/SimpleGrasp"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawTactile.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawTactile.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetFingerHome.srv" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetFingerHome.srv" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerInertial.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerInertial.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerCommands.msg" NAME_WE)
add_custom_target(_sandia_hand_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sandia_hand_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerCommands.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/CalFingerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawMoboState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RelativeJointCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawPalmState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawTactile.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerInertial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerCommands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)

### Generating Services
_generate_srv_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/GetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetJointLimitPolicy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspWithSlew.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_cpp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetFingerHome.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
)

### Generating Module File
_generate_module_cpp(sandia_hand_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sandia_hand_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sandia_hand_msgs_generate_messages sandia_hand_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/CalFingerState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawMoboState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/GetParameters.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RelativeJointCommands.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetParameters.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspSrv.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawPalmState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetJointLimitPolicy.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspWithSlew.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawTactile.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetFingerHome.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerInertial.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerCommands.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_cpp _sandia_hand_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sandia_hand_msgs_gencpp)
add_dependencies(sandia_hand_msgs_gencpp sandia_hand_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sandia_hand_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/CalFingerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawMoboState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RelativeJointCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawPalmState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawTactile.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerInertial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerCommands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)

### Generating Services
_generate_srv_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/GetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetJointLimitPolicy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspWithSlew.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_lisp(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetFingerHome.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
)

### Generating Module File
_generate_module_lisp(sandia_hand_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sandia_hand_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sandia_hand_msgs_generate_messages sandia_hand_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/CalFingerState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawMoboState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/GetParameters.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RelativeJointCommands.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetParameters.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspSrv.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawPalmState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetJointLimitPolicy.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspWithSlew.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawTactile.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetFingerHome.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerInertial.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerCommands.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_lisp _sandia_hand_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sandia_hand_msgs_genlisp)
add_dependencies(sandia_hand_msgs_genlisp sandia_hand_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sandia_hand_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/CalFingerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawMoboState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RelativeJointCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawPalmState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawTactile.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerInertial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_msg_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerCommands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)

### Generating Services
_generate_srv_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/GetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetJointLimitPolicy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspWithSlew.srv"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)
_generate_srv_py(sandia_hand_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetFingerHome.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
)

### Generating Module File
_generate_module_py(sandia_hand_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sandia_hand_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sandia_hand_msgs_generate_messages sandia_hand_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/CalFingerState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawMoboState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/GetParameters.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RelativeJointCommands.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetParameters.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/SimpleGrasp.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspSrv.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawPalmState.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/Parameter.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetJointLimitPolicy.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SimpleGraspWithSlew.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawTactile.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/srv/SetFingerHome.srv" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerInertial.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/sandia-hand/ros/sandia_hand_msgs/msg/RawFingerCommands.msg" NAME_WE)
add_dependencies(sandia_hand_msgs_generate_messages_py _sandia_hand_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sandia_hand_msgs_genpy)
add_dependencies(sandia_hand_msgs_genpy sandia_hand_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sandia_hand_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sandia_hand_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sandia_hand_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sandia_hand_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sandia_hand_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sandia_hand_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sandia_hand_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
