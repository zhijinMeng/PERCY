# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gpt_server: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gpt_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv" NAME_WE)
add_custom_target(_gpt_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gpt_server" "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(gpt_server
  "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpt_server
)

### Generating Module File
_generate_module_cpp(gpt_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpt_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gpt_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gpt_server_generate_messages gpt_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv" NAME_WE)
add_dependencies(gpt_server_generate_messages_cpp _gpt_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpt_server_gencpp)
add_dependencies(gpt_server_gencpp gpt_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpt_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(gpt_server
  "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpt_server
)

### Generating Module File
_generate_module_eus(gpt_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpt_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gpt_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gpt_server_generate_messages gpt_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv" NAME_WE)
add_dependencies(gpt_server_generate_messages_eus _gpt_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpt_server_geneus)
add_dependencies(gpt_server_geneus gpt_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpt_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(gpt_server
  "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpt_server
)

### Generating Module File
_generate_module_lisp(gpt_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpt_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gpt_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gpt_server_generate_messages gpt_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv" NAME_WE)
add_dependencies(gpt_server_generate_messages_lisp _gpt_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpt_server_genlisp)
add_dependencies(gpt_server_genlisp gpt_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpt_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(gpt_server
  "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpt_server
)

### Generating Module File
_generate_module_nodejs(gpt_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpt_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gpt_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gpt_server_generate_messages gpt_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv" NAME_WE)
add_dependencies(gpt_server_generate_messages_nodejs _gpt_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpt_server_gennodejs)
add_dependencies(gpt_server_gennodejs gpt_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpt_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(gpt_server
  "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpt_server
)

### Generating Module File
_generate_module_py(gpt_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpt_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gpt_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gpt_server_generate_messages gpt_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ari/ros_ws/eddy_code/src/gpt_server/srv/GPTGenerate.srv" NAME_WE)
add_dependencies(gpt_server_generate_messages_py _gpt_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gpt_server_genpy)
add_dependencies(gpt_server_genpy gpt_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gpt_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpt_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gpt_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gpt_server_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpt_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gpt_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gpt_server_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpt_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gpt_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gpt_server_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpt_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gpt_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gpt_server_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpt_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpt_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gpt_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gpt_server_generate_messages_py std_msgs_generate_messages_py)
endif()
