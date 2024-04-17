execute_process(COMMAND "/home/robocupathome/workspace/eddy_code/build/emotion_server/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/robocupathome/workspace/eddy_code/build/emotion_server/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
