# Install script for directory: /home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_web_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/WebGoTo.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/Subtitles.msg"
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/msg/TouchWeb.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_web_msgs/action" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/action/GetUserInput.action")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_web_msgs/msg" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputAction.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputActionFeedback.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputGoal.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputResult.msg"
    "/home/robocupathome/workspace/eddy_code/devel/share/pal_web_msgs/msg/GetUserInputFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_web_msgs/srv" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/srv/GetLastTouchWeb.srv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_web_msgs/cmake" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_web_msgs/catkin_generated/installspace/pal_web_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/include/pal_web_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/roseus/ros/pal_web_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/common-lisp/ros/pal_web_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/share/gennodejs/ros/pal_web_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/robocupathome/workspace/eddy_code/devel/lib/python3/dist-packages/pal_web_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/robocupathome/workspace/eddy_code/devel/lib/python3/dist-packages/pal_web_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_web_msgs/catkin_generated/installspace/pal_web_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_web_msgs/cmake" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_web_msgs/catkin_generated/installspace/pal_web_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_web_msgs/cmake" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_web_msgs/catkin_generated/installspace/pal_web_msgsConfig.cmake"
    "/home/robocupathome/workspace/eddy_code/build/msg_folder/pal_msgs/pal_web_msgs/catkin_generated/installspace/pal_web_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_web_msgs" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/src/msg_folder/pal_msgs/pal_web_msgs/package.xml")
endif()

