# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pal_web_msgs: 10 messages, 1 services")

set(MSG_I_FLAGS "-Ipal_web_msgs:/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg;-Ipal_web_msgs:/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Ipal_interaction_msgs:/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg;-Ipal_interaction_msgs:/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pal_web_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" ""
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg" ""
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg" ""
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg" "pal_web_msgs/GetUserInputActionResult:pal_web_msgs/GetUserInputGoal:pal_interaction_msgs/Input:pal_web_msgs/GetUserInputFeedback:pal_web_msgs/WebGoTo:std_msgs/Header:pal_web_msgs/GetUserInputActionGoal:pal_web_msgs/GetUserInputResult:actionlib_msgs/GoalStatus:pal_interaction_msgs/InputArgument:pal_interaction_msgs/I18nArgument:pal_interaction_msgs/TtsText:pal_interaction_msgs/I18nText:actionlib_msgs/GoalID:pal_web_msgs/GetUserInputActionFeedback:pal_interaction_msgs/TtsGoal"
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg" "pal_web_msgs/GetUserInputGoal:pal_web_msgs/WebGoTo:std_msgs/Header:pal_interaction_msgs/I18nArgument:pal_interaction_msgs/TtsText:pal_interaction_msgs/I18nText:actionlib_msgs/GoalID:pal_interaction_msgs/TtsGoal"
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg" "pal_interaction_msgs/Input:std_msgs/Header:pal_web_msgs/GetUserInputResult:actionlib_msgs/GoalStatus:pal_interaction_msgs/InputArgument:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg" "actionlib_msgs/GoalID:pal_web_msgs/GetUserInputFeedback:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg" "pal_web_msgs/WebGoTo:pal_interaction_msgs/I18nArgument:pal_interaction_msgs/TtsText:pal_interaction_msgs/I18nText:pal_interaction_msgs/TtsGoal"
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg" "pal_interaction_msgs/Input:pal_interaction_msgs/InputArgument"
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg" ""
)

get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv" NAME_WE)
add_custom_target(_pal_web_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pal_web_msgs" "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)

### Generating Services
_generate_srv_cpp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
)

### Generating Module File
_generate_module_cpp(pal_web_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pal_web_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pal_web_msgs_generate_messages pal_web_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_cpp _pal_web_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_web_msgs_gencpp)
add_dependencies(pal_web_msgs_gencpp pal_web_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_web_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)

### Generating Services
_generate_srv_eus(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
)

### Generating Module File
_generate_module_eus(pal_web_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pal_web_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pal_web_msgs_generate_messages pal_web_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_eus _pal_web_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_web_msgs_geneus)
add_dependencies(pal_web_msgs_geneus pal_web_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_web_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)

### Generating Services
_generate_srv_lisp(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
)

### Generating Module File
_generate_module_lisp(pal_web_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pal_web_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pal_web_msgs_generate_messages pal_web_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_lisp _pal_web_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_web_msgs_genlisp)
add_dependencies(pal_web_msgs_genlisp pal_web_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_web_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)

### Generating Services
_generate_srv_nodejs(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
)

### Generating Module File
_generate_module_nodejs(pal_web_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pal_web_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pal_web_msgs_generate_messages pal_web_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_nodejs _pal_web_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_web_msgs_gennodejs)
add_dependencies(pal_web_msgs_gennodejs pal_web_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_web_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/TtsText.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/I18nText.msg;/home/ari/ros_ws/eddy_code/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/Input.msg;/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)
_generate_msg_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)

### Generating Services
_generate_srv_py(pal_web_msgs
  "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
)

### Generating Module File
_generate_module_py(pal_web_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pal_web_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pal_web_msgs_generate_messages pal_web_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv" NAME_WE)
add_dependencies(pal_web_msgs_generate_messages_py _pal_web_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pal_web_msgs_genpy)
add_dependencies(pal_web_msgs_genpy pal_web_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pal_web_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pal_web_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pal_web_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pal_web_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET pal_interaction_msgs_generate_messages_cpp)
  add_dependencies(pal_web_msgs_generate_messages_cpp pal_interaction_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pal_web_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pal_web_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(pal_web_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET pal_interaction_msgs_generate_messages_eus)
  add_dependencies(pal_web_msgs_generate_messages_eus pal_interaction_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pal_web_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pal_web_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pal_web_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET pal_interaction_msgs_generate_messages_lisp)
  add_dependencies(pal_web_msgs_generate_messages_lisp pal_interaction_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pal_web_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pal_web_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(pal_web_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET pal_interaction_msgs_generate_messages_nodejs)
  add_dependencies(pal_web_msgs_generate_messages_nodejs pal_interaction_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pal_web_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pal_web_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pal_web_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET pal_interaction_msgs_generate_messages_py)
  add_dependencies(pal_web_msgs_generate_messages_py pal_interaction_msgs_generate_messages_py)
endif()
