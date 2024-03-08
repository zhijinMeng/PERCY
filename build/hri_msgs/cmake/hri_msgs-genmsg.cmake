# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hri_msgs: 17 messages, 0 services")

set(MSG_I_FLAGS "-Ihri_msgs:/home/ubuntu/pt0/src/hri_msgs/msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hri_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg" ""
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg" "std_msgs/Header:hri_msgs/NormalizedPointOfInterest2D"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg" ""
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg" ""
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg" "std_msgs/Header:hri_msgs/NormalizedPointOfInterest2D"
)

get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg" NAME_WE)
add_custom_target(_hri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hri_msgs" "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)
_generate_msg_cpp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hri_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hri_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hri_msgs_generate_messages hri_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_cpp _hri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_msgs_gencpp)
add_dependencies(hri_msgs_gencpp hri_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)
_generate_msg_eus(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(hri_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hri_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hri_msgs_generate_messages hri_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_eus _hri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_msgs_geneus)
add_dependencies(hri_msgs_geneus hri_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)
_generate_msg_lisp(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hri_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hri_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hri_msgs_generate_messages hri_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_lisp _hri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_msgs_genlisp)
add_dependencies(hri_msgs_genlisp hri_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)
_generate_msg_nodejs(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hri_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hri_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hri_msgs_generate_messages hri_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_nodejs _hri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_msgs_gennodejs)
add_dependencies(hri_msgs_gennodejs hri_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)
_generate_msg_py(hri_msgs
  "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hri_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hri_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hri_msgs_generate_messages hri_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg" NAME_WE)
add_dependencies(hri_msgs_generate_messages_py _hri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hri_msgs_genpy)
add_dependencies(hri_msgs_genpy hri_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hri_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hri_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(hri_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hri_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(hri_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hri_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(hri_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hri_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(hri_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hri_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(hri_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
