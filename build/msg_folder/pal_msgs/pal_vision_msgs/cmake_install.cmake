# Install script for directory: /home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_vision_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/DetectedObject.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/DetectedPerson.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/FaceDetection.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/FaceDetections.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/FollowMeResponse.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/Gesture.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/HeadPanTilt.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/HogDetection.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/HogDetections.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/LegDetections.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/msg/Rectangle.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_vision_msgs/srv" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/srv/FaceTrackingStart.srv"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/srv/FaceTrackingStop.srv"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/srv/FollowMeStart.srv"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/srv/FollowMeStop.srv"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/srv/LookToPixel.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_vision_msgs/action" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/action/FaceRecognition.action")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_vision_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_vision_msgs/msg/FaceRecognitionAction.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_vision_msgs/msg/FaceRecognitionActionGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_vision_msgs/msg/FaceRecognitionActionResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_vision_msgs/msg/FaceRecognitionActionFeedback.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_vision_msgs/msg/FaceRecognitionGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_vision_msgs/msg/FaceRecognitionResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_vision_msgs/msg/FaceRecognitionFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_vision_msgs/cmake" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_vision_msgs/catkin_generated/installspace/pal_vision_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/include/pal_vision_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/roseus/ros/pal_vision_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/common-lisp/ros/pal_vision_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/gennodejs/ros/pal_vision_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/robocupathome/workspace/eddy_code/devel/lib/python3/dist-packages/pal_vision_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/lib/python3/dist-packages/pal_vision_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_vision_msgs/catkin_generated/installspace/pal_vision_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_vision_msgs/cmake" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_vision_msgs/catkin_generated/installspace/pal_vision_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_vision_msgs/cmake" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_vision_msgs/catkin_generated/installspace/pal_vision_msgsConfig.cmake"
    "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_vision_msgs/catkin_generated/installspace/pal_vision_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_vision_msgs" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_vision_msgs/package.xml")
endif()

