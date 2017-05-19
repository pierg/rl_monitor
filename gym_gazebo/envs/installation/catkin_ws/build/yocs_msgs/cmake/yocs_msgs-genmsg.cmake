# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yocs_msgs: 36 messages, 1 services")

set(MSG_I_FLAGS "-Iyocs_msgs:/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg;-Iyocs_msgs:/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yocs_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControl.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControl.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/MagicButton.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/MagicButton.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg" "yocs_msgs/DockingInteractorActionFeedback:yocs_msgs/DockingInteractorActionResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:yocs_msgs/DockingInteractorFeedback:yocs_msgs/DockingInteractorResult:yocs_msgs/DockingInteractorGoal:yocs_msgs/DockingInteractorActionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg" "geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:yocs_msgs/NavigateToGoal"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:yocs_msgs/Waypoint:std_msgs/Header"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:yocs_msgs/LocalizeResult"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TrajectoryList.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TrajectoryList.msg" "geometry_msgs/Point:yocs_msgs/Trajectory:std_msgs/Header:geometry_msgs/Quaternion:yocs_msgs/Waypoint:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPairList.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPairList.msg" "yocs_msgs/ARPair"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg" "geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg" "geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControlStatus.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControlStatus.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:yocs_msgs/DockingInteractorGoal"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:yocs_msgs/Waypoint"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg" "actionlib_msgs/GoalID:yocs_msgs/LocalizeGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:yocs_msgs/DockingInteractorResult"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:yocs_msgs/NavigateToResult"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg" "yocs_msgs/NavigateToActionFeedback:yocs_msgs/NavigateToFeedback:yocs_msgs/NavigateToActionGoal:actionlib_msgs/GoalID:yocs_msgs/NavigateToActionResult:actionlib_msgs/GoalStatus:yocs_msgs/NavigateToGoal:yocs_msgs/NavigateToResult:std_msgs/Header"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:yocs_msgs/LocalizeFeedback"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/srv/WaypointListService.srv" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/srv/WaypointListService.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:yocs_msgs/WaypointList:std_msgs/Header:yocs_msgs/Waypoint:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TableList.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TableList.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:yocs_msgs/Table:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ColumnList.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ColumnList.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:yocs_msgs/Column:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:yocs_msgs/NavigateToFeedback"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg" "actionlib_msgs/GoalID:yocs_msgs/LocalizeFeedback:yocs_msgs/LocalizeActionGoal:actionlib_msgs/GoalStatus:yocs_msgs/LocalizeActionResult:std_msgs/Header:yocs_msgs/LocalizeResult:yocs_msgs/LocalizeGoal:yocs_msgs/LocalizeActionFeedback"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg" ""
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WallList.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WallList.msg" "geometry_msgs/Point:yocs_msgs/Wall:geometry_msgs/Quaternion:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg" NAME_WE)
add_custom_target(_yocs_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yocs_msgs" "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:yocs_msgs/DockingInteractorFeedback"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/MagicButton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TrajectoryList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ColumnList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TableList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WallList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)

### Generating Services
_generate_srv_cpp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/srv/WaypointListService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
)

### Generating Module File
_generate_module_cpp(yocs_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yocs_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yocs_msgs_generate_messages yocs_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControl.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/MagicButton.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TrajectoryList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPairList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControlStatus.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/srv/WaypointListService.srv" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TableList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ColumnList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WallList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_cpp _yocs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yocs_msgs_gencpp)
add_dependencies(yocs_msgs_gencpp yocs_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yocs_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/MagicButton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TrajectoryList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ColumnList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TableList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WallList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)
_generate_msg_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)

### Generating Services
_generate_srv_lisp(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/srv/WaypointListService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
)

### Generating Module File
_generate_module_lisp(yocs_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yocs_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yocs_msgs_generate_messages yocs_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControl.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/MagicButton.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TrajectoryList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPairList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControlStatus.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/srv/WaypointListService.srv" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TableList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ColumnList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WallList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_lisp _yocs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yocs_msgs_genlisp)
add_dependencies(yocs_msgs_genlisp yocs_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yocs_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/MagicButton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TrajectoryList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPairList.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ColumnList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TableList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WallList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)
_generate_msg_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)

### Generating Services
_generate_srv_py(yocs_msgs
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/srv/WaypointListService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
)

### Generating Module File
_generate_module_py(yocs_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yocs_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yocs_msgs_generate_messages yocs_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControl.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/MagicButton.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Table.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TrajectoryList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPairList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Column.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Wall.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/NavigationControlStatus.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ARPair.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorGoal.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/srv/WaypointListService.srv" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/TableList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/ColumnList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeAction.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/LocalizeResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/NavigateToFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorResult.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/yocs_msgs/msg/WallList.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/devel/share/yocs_msgs/msg/DockingInteractorActionFeedback.msg" NAME_WE)
add_dependencies(yocs_msgs_generate_messages_py _yocs_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yocs_msgs_genpy)
add_dependencies(yocs_msgs_genpy yocs_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yocs_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yocs_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(yocs_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yocs_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(yocs_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(yocs_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yocs_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(yocs_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yocs_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(yocs_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(yocs_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yocs_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(yocs_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yocs_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(yocs_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(yocs_msgs_generate_messages_py std_srvs_generate_messages_py)
endif()
