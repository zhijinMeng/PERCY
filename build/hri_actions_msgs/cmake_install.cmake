# Install script for directory: /home/robocupathome/workspace/eddy_code/src/hri_actions_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/robocupathome/workspace/eddy_code/install")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/src/hri_actions_msgs/msg/LookAtWithStyle.msg"
    "/home/robocupathome/workspace/eddy_code/src/hri_actions_msgs/msg/Intent.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/action" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/src/hri_actions_msgs/action/LookAt.action"
    "/home/robocupathome/workspace/eddy_code/src/hri_actions_msgs/action/PointTrajectory.action"
    "/home/robocupathome/workspace/eddy_code/src/hri_actions_msgs/action/ApplicationControl.action"
    "/home/robocupathome/workspace/eddy_code/src/hri_actions_msgs/action/FaceOverlay.action"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtAction.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtActionFeedback.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/LookAtFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryAction.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryActionFeedback.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/PointTrajectoryFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlAction.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlActionFeedback.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/ApplicationControlFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayAction.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayActionFeedback.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/hri_actions_msgs/msg/FaceOverlayFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/cmake" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/hri_actions_msgs/catkin_generated/installspace/hri_actions_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/include/hri_actions_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/roseus/ros/hri_actions_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/common-lisp/ros/hri_actions_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/gennodejs/ros/hri_actions_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/robocupathome/workspace/eddy_code/devel/lib/python3/dist-packages/hri_actions_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/lib/python3/dist-packages/hri_actions_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/hri_actions_msgs/catkin_generated/installspace/hri_actions_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/cmake" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/hri_actions_msgs/catkin_generated/installspace/hri_actions_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs/cmake" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/build/hri_actions_msgs/catkin_generated/installspace/hri_actions_msgsConfig.cmake"
    "/home/robocupathome/workspace/eddy_code/build/hri_actions_msgs/catkin_generated/installspace/hri_actions_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_actions_msgs" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/src/hri_actions_msgs/package.xml")
endif()

