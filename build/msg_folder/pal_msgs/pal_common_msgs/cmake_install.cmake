# Install script for directory: /home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_common_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ari/ros_ws/eddy_code/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs/action" TYPE FILE FILES
    "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_common_msgs/action/Disable.action"
    "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_common_msgs/action/Empty.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs/msg" TYPE FILE FILES
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/DisableAction.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/DisableActionGoal.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/DisableActionResult.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/DisableActionFeedback.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/DisableGoal.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/DisableResult.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/DisableFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs/msg" TYPE FILE FILES
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/EmptyAction.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/EmptyActionGoal.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/EmptyActionResult.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/EmptyActionFeedback.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/EmptyGoal.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/EmptyResult.msg"
    "/home/ari/ros_ws/eddy_code/devel/share/pal_common_msgs/msg/EmptyFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs/msg" TYPE FILE FILES "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_common_msgs/msg/JointCurrent.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs/srv" TYPE FILE FILES
    "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_common_msgs/srv/SetString.srv"
    "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_common_msgs/srv/GetString.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs/cmake" TYPE FILE FILES "/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_common_msgs/catkin_generated/installspace/pal_common_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ari/ros_ws/eddy_code/devel/include/pal_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ari/ros_ws/eddy_code/devel/share/roseus/ros/pal_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ari/ros_ws/eddy_code/devel/share/common-lisp/ros/pal_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ari/ros_ws/eddy_code/devel/share/gennodejs/ros/pal_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ari/ros_ws/eddy_code/devel/lib/python3/dist-packages/pal_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ari/ros_ws/eddy_code/devel/lib/python3/dist-packages/pal_common_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_common_msgs/catkin_generated/installspace/pal_common_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs/cmake" TYPE FILE FILES "/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_common_msgs/catkin_generated/installspace/pal_common_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs/cmake" TYPE FILE FILES
    "/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_common_msgs/catkin_generated/installspace/pal_common_msgsConfig.cmake"
    "/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_common_msgs/catkin_generated/installspace/pal_common_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_common_msgs" TYPE FILE FILES "/home/ari/ros_ws/eddy_code/src/msg_folder/pal_msgs/pal_common_msgs/package.xml")
endif()

