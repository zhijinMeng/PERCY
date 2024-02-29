# Install script for directory: /home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/action" TYPE FILE FILES
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/action/ExecuteParking.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/action/FollowWaypoints.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/action/JoyPriority.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/action/JoyTurbo.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/action/GoToPOI.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/action/GoTo.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/action/VisualTraining.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/ExecuteParkingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/FollowWaypointsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyPriorityFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/JoyTurboFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToPOIFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/GoToFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_navigation_msgs/msg/VisualTrainingFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/AvailableMaps.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/Emergency.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/EulerAngles.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/EulerAnglesStamped.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/MapConfiguration.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/MissedWaypoint.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/NavigationStatus.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/NiceMapTransformation.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/POI.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/POIGroup.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/PolarReading.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/PolarReadingScan.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/ServiceStatus.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/TabletPOI.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/VisualLocDB.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/Highways.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/LaserImage.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/msg/Waypoint.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/srv" TYPE FILE FILES
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/Acknowledgment.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/ChangeBuilding.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/ChangeMap.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/ChangeSyncMap.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/DisableEmergency.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/FinalApproachPose.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/ListMaps.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/GetMapConfiguration.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/GetNodes.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/GetPOI.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/GetSubMap.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/RegisterSync.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/SafetyZone.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/SaveMap.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/SetMapConfiguration.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/SetPOI.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/SetSubMapFloor.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/VisualLocRecognize.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/srv/RenameMap.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES "/home/ubuntu/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/include/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/roseus/ros/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/common-lisp/ros/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/gennodejs/ros/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ubuntu/pt0/devel/lib/python3/dist-packages/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/lib/python3/dist-packages/pal_navigation_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES "/home/ubuntu/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs/cmake" TYPE FILE FILES
    "/home/ubuntu/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgsConfig.cmake"
    "/home/ubuntu/pt0/build/pal_msgs/pal_navigation_msgs/catkin_generated/installspace/pal_navigation_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_navigation_msgs" TYPE FILE FILES "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pal_navigation_msgs" TYPE DIRECTORY FILES "/home/ubuntu/pt0/src/pal_msgs/pal_navigation_msgs/include/pal_navigation_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

