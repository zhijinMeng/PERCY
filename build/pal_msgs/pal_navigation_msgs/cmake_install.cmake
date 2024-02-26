# Install script for directory: /home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zhijin/pt0/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/action" TYPE FILE FILES
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/action/ExecuteParking.action"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/action/FollowWaypoints.action"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/action/JoyPriority.action"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/action/JoyTurbo.action"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/action/GoToPOI.action"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/action/GoTo.action"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/action/VisualTraining.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToAction.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToActionResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/GoToFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
    "/home/zhijin/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/srv" TYPE FILE FILES
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
    "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES "/home/zhijin/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zhijin/pt0/devel/include/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/zhijin/pt0/devel/share/roseus/ros/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zhijin/pt0/devel/share/common-lisp/ros/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/zhijin/pt0/devel/share/gennodejs/ros/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/zhijin/pt0/devel/lib/python3/dist-packages/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/zhijin/pt0/devel/lib/python3/dist-packages/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zhijin/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES "/home/zhijin/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES
    "/home/zhijin/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgsConfig.cmake"
    "/home/zhijin/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs" TYPE FILE FILES "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pal_navigation_msgs" TYPE DIRECTORY FILES "/home/zhijin/pt0/src/pal_msgs/pal_navigation_msgs/include/pal_navigation_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

