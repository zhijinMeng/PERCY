# Install script for directory: /home/robocupathome/workspace/eddy_code/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robocupathome/workspace/eddy_code/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/robocupathome/workspace/eddy_code/install" TYPE PROGRAM FILES "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/_setup_util.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robocupathome/workspace/eddy_code/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/robocupathome/workspace/eddy_code/install" TYPE PROGRAM FILES "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/env.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robocupathome/workspace/eddy_code/install/setup.bash;/home/robocupathome/workspace/eddy_code/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/robocupathome/workspace/eddy_code/install" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/setup.bash"
    "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robocupathome/workspace/eddy_code/install/setup.sh;/home/robocupathome/workspace/eddy_code/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/robocupathome/workspace/eddy_code/install" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/setup.sh"
    "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robocupathome/workspace/eddy_code/install/setup.zsh;/home/robocupathome/workspace/eddy_code/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/robocupathome/workspace/eddy_code/install" TYPE FILE FILES
    "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/setup.zsh"
    "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/robocupathome/workspace/eddy_code/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/robocupathome/workspace/eddy_code/install" TYPE FILE FILES "/home/robocupathome/workspace/eddy_code/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/robocupathome/workspace/eddy_code/build/gtest/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/humanoid_msgs/humanoid_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_video_recording_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/hri_actions_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/humanoid_msgs/humanoid_nav_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_behaviour_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_common_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_control_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_device_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_interaction_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_motion_model_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_multirobot_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_simulation_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_tablet_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_visual_localization_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_walking_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_web_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_wifi_localization_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/emotion/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/emotion_server/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/gpt_research/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/gpt_server/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/sensors/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/stt/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_detection_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_navigation_msgs/cmake_install.cmake")
  include("/home/robocupathome/workspace/eddy_code/build/pal_msgs/pal_vision_msgs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/robocupathome/workspace/eddy_code/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
