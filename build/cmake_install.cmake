# Install script for directory: /home/ari/ros_ws/eddy_code/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ari/ros_ws/eddy_code/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ari/ros_ws/eddy_code/install" TYPE PROGRAM FILES "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ari/ros_ws/eddy_code/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ari/ros_ws/eddy_code/install" TYPE PROGRAM FILES "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ari/ros_ws/eddy_code/install/setup.bash;/home/ari/ros_ws/eddy_code/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ari/ros_ws/eddy_code/install" TYPE FILE FILES
    "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/setup.bash"
    "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ari/ros_ws/eddy_code/install/setup.sh;/home/ari/ros_ws/eddy_code/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ari/ros_ws/eddy_code/install" TYPE FILE FILES
    "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/setup.sh"
    "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ari/ros_ws/eddy_code/install/setup.zsh;/home/ari/ros_ws/eddy_code/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ari/ros_ws/eddy_code/install" TYPE FILE FILES
    "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/setup.zsh"
    "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/ari/ros_ws/eddy_code/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/ari/ros_ws/eddy_code/install" TYPE FILE FILES "/home/ari/ros_ws/eddy_code/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ari/ros_ws/eddy_code/build/gtest/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/humanoid_msgs/humanoid_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_video_recording_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/hri_actions_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/humanoid_msgs/humanoid_nav_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_behaviour_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_common_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_control_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_device_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_interaction_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_motion_model_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_multirobot_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_simulation_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_tablet_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_visual_localization_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_walking_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_web_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_wifi_localization_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/test_urdf/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/universal_robots/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/chatting_system/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/emotion_model/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/gpt_server/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/sensors/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_detection_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_navigation_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/msg_folder/pal_msgs/pal_vision_msgs/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur10_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur10e_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur16e_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur20_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur30_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur3_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur3e_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur5_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur5e_moveit_config/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur_description/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur_gazebo/cmake_install.cmake")
  include("/home/ari/ros_ws/eddy_code/build/universal_robot/ur_kinematics/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ari/ros_ws/eddy_code/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
