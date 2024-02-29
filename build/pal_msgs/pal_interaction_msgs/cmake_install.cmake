# Install script for directory: /home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/actiontag.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/ASRActivation.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/ASREvent.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/ASRLangModelMngmt.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/ASRLanguage.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/asrresult.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/ASRSrvRequest.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/ASRSrvResponse.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/ASRStatus.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/asrupdate.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/AudioDeviceDescription.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/AudioPlayerState.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/audiosignal.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/DirectionOfArrival.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/EnablingSoundLocalisation.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/I18nText.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/I18nArgument.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/Input.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/InputArgument.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/TTSstate.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/TtsText.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/TtsMark.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/VoiceActivity.msg"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/msg/WebGuiEvent.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/action" TYPE FILE FILES
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/action/ASRFile.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/action/AudioPlay.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/action/Sound.action"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/action/Tts.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/ASRFileAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/ASRFileActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/ASRFileActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/ASRFileActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/ASRFileGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/ASRFileResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/ASRFileFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/AudioPlayAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/AudioPlayActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/AudioPlayActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/AudioPlayActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/AudioPlayGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/AudioPlayResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/AudioPlayFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/SoundAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/SoundActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/SoundActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/SoundActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/SoundGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/SoundResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/SoundFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/TtsAction.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/TtsActionGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/TtsActionResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/TtsActionFeedback.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/TtsGoal.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/TtsResult.msg"
    "/home/ubuntu/pt0/devel/share/pal_interaction_msgs/msg/TtsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/srv" TYPE FILE FILES
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/srv/ASRService.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/srv/GetSpeechDuration.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/srv/recognizerService.srv"
    "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/srv/SoundLocalisationService.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/cmake" TYPE FILE FILES "/home/ubuntu/pt0/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/include/pal_interaction_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/roseus/ros/pal_interaction_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/common-lisp/ros/pal_interaction_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/share/gennodejs/ros/pal_interaction_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ubuntu/pt0/devel/lib/python3/dist-packages/pal_interaction_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/pt0/devel/lib/python3/dist-packages/pal_interaction_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/pt0/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/cmake" TYPE FILE FILES "/home/ubuntu/pt0/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs/cmake" TYPE FILE FILES
    "/home/ubuntu/pt0/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgsConfig.cmake"
    "/home/ubuntu/pt0/build/pal_msgs/pal_interaction_msgs/catkin_generated/installspace/pal_interaction_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pal_interaction_msgs" TYPE FILE FILES "/home/ubuntu/pt0/src/pal_msgs/pal_interaction_msgs/package.xml")
endif()

