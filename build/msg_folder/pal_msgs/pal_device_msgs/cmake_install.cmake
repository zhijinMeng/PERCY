# Install script for directory: /home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_device_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/BatteryState.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/Bumper.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedGroup.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedEffectParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedFixedColorParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedRainbowParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedFadeParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedBlinkParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedProgressParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedFlowParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedDataArrayParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedEffectViaTopicParams.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/msg/LedPreProgrammedParams.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_device_msgs/srv" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/srv/CancelEffect.srv"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/srv/ShutdownAndWakeUpRobot.srv"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/srv/TimedBlinkEffect.srv"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/srv/TimedColourEffect.srv"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/srv/TimedFadeEffect.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_device_msgs/action" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/action/DoTimedLedEffect.action")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_device_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_device_msgs/msg/DoTimedLedEffectAction.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_device_msgs/msg/DoTimedLedEffectActionGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_device_msgs/msg/DoTimedLedEffectActionResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_device_msgs/msg/DoTimedLedEffectActionFeedback.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_device_msgs/msg/DoTimedLedEffectGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_device_msgs/msg/DoTimedLedEffectResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_device_msgs/msg/DoTimedLedEffectFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_device_msgs/cmake" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_device_msgs/catkin_generated/installspace/pal_device_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/include/pal_device_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/roseus/ros/pal_device_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/common-lisp/ros/pal_device_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/gennodejs/ros/pal_device_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/robocupathome/workspace/eddy_code/devel/lib/python3/dist-packages/pal_device_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/lib/python3/dist-packages/pal_device_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_device_msgs/catkin_generated/installspace/pal_device_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_device_msgs/cmake" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_device_msgs/catkin_generated/installspace/pal_device_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_device_msgs/cmake" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_device_msgs/catkin_generated/installspace/pal_device_msgsConfig.cmake"
    "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_device_msgs/catkin_generated/installspace/pal_device_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_device_msgs" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_device_msgs/package.xml")
endif()

