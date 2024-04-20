# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hri_actions_msgs: 30 messages, 0 services")

set(MSG_I_FLAGS "-Ihri_actions_msgs:/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg;-Ihri_actions_msgs:/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hri_actions_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg" "geometry_msgs/Point:geometry_msgs/PointStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg" "geometry_msgs/Point:actionlib_msgs/GoalID:std_msgs/Header:hri_actions_msgs/LookAtActionGoal:hri_actions_msgs/LookAtResult:hri_actions_msgs/LookAtActionResult:actionlib_msgs/GoalStatus:geometry_msgs/PointStamped:hri_actions_msgs/LookAtGoal:hri_actions_msgs/LookAtActionFeedback:hri_actions_msgs/LookAtFeedback"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg" "geometry_msgs/Point:actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/PointStamped:hri_actions_msgs/LookAtGoal"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:hri_actions_msgs/LookAtResult:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg" "hri_actions_msgs/LookAtFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg" "geometry_msgs/Point:geometry_msgs/PointStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg" "geometry_msgs/Point:hri_actions_msgs/PointTrajectoryActionFeedback:hri_actions_msgs/PointTrajectoryGoal:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:hri_actions_msgs/PointTrajectoryActionResult:hri_actions_msgs/PointTrajectoryFeedback:hri_actions_msgs/PointTrajectoryActionGoal:hri_actions_msgs/PointTrajectoryResult"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg" "geometry_msgs/Point:hri_actions_msgs/PointTrajectoryGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:hri_actions_msgs/PointTrajectoryResult:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg" "hri_actions_msgs/PointTrajectoryFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg" "actionlib_msgs/GoalID:hri_actions_msgs/ApplicationControlActionResult:std_msgs/Header:hri_actions_msgs/ApplicationControlResult:hri_actions_msgs/ApplicationControlGoal:hri_actions_msgs/ApplicationControlActionGoal:hri_actions_msgs/ApplicationControlActionFeedback:actionlib_msgs/GoalStatus:hri_actions_msgs/ApplicationControlFeedback"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg" "actionlib_msgs/GoalID:hri_actions_msgs/ApplicationControlGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg" "hri_actions_msgs/ApplicationControlResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg" "hri_actions_msgs/ApplicationControlFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg" "hri_actions_msgs/FaceOverlayFeedback:actionlib_msgs/GoalID:std_msgs/Header:hri_actions_msgs/FaceOverlayResult:hri_actions_msgs/FaceOverlayActionResult:hri_actions_msgs/FaceOverlayActionFeedback:actionlib_msgs/GoalStatus:hri_actions_msgs/FaceOverlayGoal:hri_actions_msgs/FaceOverlayActionGoal"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg" "hri_actions_msgs/FaceOverlayGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg" "hri_actions_msgs/FaceOverlayResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg" "hri_actions_msgs/FaceOverlayFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg" ""
)

get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg" NAME_WE)
add_custom_target(_hri_actions_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_actions_msgs" "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_cpp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hri_actions_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hri_actions_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hri_actions_msgs_generate_messages hri_actions_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_cpp _hri_actions_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_actions_msgs_gencpp)
add_dependencies(hri_actions_msgs_gencpp hri_actions_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_actions_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_eus(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(hri_actions_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hri_actions_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hri_actions_msgs_generate_messages hri_actions_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_eus _hri_actions_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_actions_msgs_geneus)
add_dependencies(hri_actions_msgs_geneus hri_actions_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_actions_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_lisp(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hri_actions_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hri_actions_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hri_actions_msgs_generate_messages hri_actions_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_lisp _hri_actions_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_actions_msgs_genlisp)
add_dependencies(hri_actions_msgs_genlisp hri_actions_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_actions_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_nodejs(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hri_actions_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hri_actions_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hri_actions_msgs_generate_messages hri_actions_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_nodejs _hri_actions_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_actions_msgs_gennodejs)
add_dependencies(hri_actions_msgs_gennodejs hri_actions_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_actions_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)
_generate_msg_py(hri_actions_msgs
  "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hri_actions_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hri_actions_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hri_actions_msgs_generate_messages hri_actions_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/LookAtWithStyle.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/src/msg_folder/hri_actions_msgs/msg/Intent.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg" NAME_WE)
add_dependencies(hri_actions_msgs_generate_messages_py _hri_actions_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_actions_msgs_genpy)
add_dependencies(hri_actions_msgs_genpy hri_actions_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_actions_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_actions_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(hri_actions_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hri_actions_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_actions_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(hri_actions_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hri_actions_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_actions_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(hri_actions_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hri_actions_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_actions_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(hri_actions_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hri_actions_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_actions_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(hri_actions_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hri_actions_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
