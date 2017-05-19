# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "handle_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ihandle_msgs:/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(handle_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/CableTension.msg" NAME_WE)
add_custom_target(_handle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "handle_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/CableTension.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg" NAME_WE)
add_custom_target(_handle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "handle_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensors.msg" NAME_WE)
add_custom_target(_handle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "handle_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensors.msg" "handle_msgs/Finger:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg" NAME_WE)
add_custom_target(_handle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "handle_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleCollisions.msg" NAME_WE)
add_custom_target(_handle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "handle_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleCollisions.msg" "std_msgs/Header:handle_msgs/Collision"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleControl.msg" NAME_WE)
add_custom_target(_handle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "handle_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleControl.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensorsCalibrated.msg" NAME_WE)
add_custom_target(_handle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "handle_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensorsCalibrated.msg" "handle_msgs/Finger:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/CableTension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
)
_generate_msg_cpp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
)
_generate_msg_cpp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensors.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
)
_generate_msg_cpp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
)
_generate_msg_cpp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleCollisions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
)
_generate_msg_cpp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
)
_generate_msg_cpp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensorsCalibrated.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(handle_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(handle_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(handle_msgs_generate_messages handle_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/CableTension.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_cpp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_cpp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensors.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_cpp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_cpp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleCollisions.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_cpp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleControl.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_cpp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensorsCalibrated.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_cpp _handle_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(handle_msgs_gencpp)
add_dependencies(handle_msgs_gencpp handle_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS handle_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/CableTension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
)
_generate_msg_lisp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
)
_generate_msg_lisp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensors.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
)
_generate_msg_lisp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
)
_generate_msg_lisp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleCollisions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
)
_generate_msg_lisp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
)
_generate_msg_lisp(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensorsCalibrated.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(handle_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(handle_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(handle_msgs_generate_messages handle_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/CableTension.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_lisp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_lisp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensors.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_lisp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_lisp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleCollisions.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_lisp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleControl.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_lisp _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensorsCalibrated.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_lisp _handle_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(handle_msgs_genlisp)
add_dependencies(handle_msgs_genlisp handle_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS handle_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/CableTension.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
)
_generate_msg_py(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
)
_generate_msg_py(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensors.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
)
_generate_msg_py(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
)
_generate_msg_py(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleCollisions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
)
_generate_msg_py(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
)
_generate_msg_py(handle_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensorsCalibrated.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(handle_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(handle_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(handle_msgs_generate_messages handle_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/CableTension.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_py _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Finger.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_py _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensors.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_py _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/Collision.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_py _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleCollisions.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_py _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleControl.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_py _handle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/drcsim/handle_msgs/msg/HandleSensorsCalibrated.msg" NAME_WE)
add_dependencies(handle_msgs_generate_messages_py _handle_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(handle_msgs_genpy)
add_dependencies(handle_msgs_genpy handle_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS handle_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/handle_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(handle_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/handle_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(handle_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/handle_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(handle_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
