# Install script for directory: /home/ubuntu/pt0/src/hri_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/pt0/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/src/hri_msgs/msg/AudioFeatures.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/BodyPosture.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/EngagementLevel.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/Expression.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/FacialActionUnits.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/FacialLandmarks.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/Gaze.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/Gesture.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/Group.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/IdsList.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/IdsMatch.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/LiveSpeech.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2D.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedPointOfInterest2DStamped.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/NormalizedRegionOfInterest2D.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/Skeleton2D.msg"
    "/home/ubuntu/pt0/src/hri_msgs/msg/SoftBiometrics.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_msgs/cmake" TYPE FILE FILES "/home/ubuntu/pt0/build/hri_msgs/catkin_generated/installspace/hri_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/include/hri_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/roseus/ros/hri_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/common-lisp/ros/hri_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/gennodejs/ros/hri_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ubuntu/pt0/devel/lib/python3/dist-packages/hri_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/lib/python3/dist-packages/hri_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/pt0/build/hri_msgs/catkin_generated/installspace/hri_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_msgs/cmake" TYPE FILE FILES "/home/ubuntu/pt0/build/hri_msgs/catkin_generated/installspace/hri_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_msgs/cmake" TYPE FILE FILES
    "/home/ubuntu/pt0/build/hri_msgs/catkin_generated/installspace/hri_msgsConfig.cmake"
    "/home/ubuntu/pt0/build/hri_msgs/catkin_generated/installspace/hri_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hri_msgs" TYPE FILE FILES "/home/ubuntu/pt0/src/hri_msgs/package.xml")
endif()

