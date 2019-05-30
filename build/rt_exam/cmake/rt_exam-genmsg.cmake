# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rt_exam: 1 messages, 1 services")

set(MSG_I_FLAGS "-Irt_exam:/home/acer/houman-rtech/src/rt_exam/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rt_exam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/srv/move.srv" NAME_WE)
add_custom_target(_rt_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rt_exam" "/home/acer/houman-rtech/src/rt_exam/srv/move.srv" ""
)

get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg" NAME_WE)
add_custom_target(_rt_exam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rt_exam" "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_exam
)

### Generating Services
_generate_srv_cpp(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_exam
)

### Generating Module File
_generate_module_cpp(rt_exam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_exam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rt_exam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rt_exam_generate_messages rt_exam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/srv/move.srv" NAME_WE)
add_dependencies(rt_exam_generate_messages_cpp _rt_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg" NAME_WE)
add_dependencies(rt_exam_generate_messages_cpp _rt_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_exam_gencpp)
add_dependencies(rt_exam_gencpp rt_exam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_exam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_exam
)

### Generating Services
_generate_srv_eus(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_exam
)

### Generating Module File
_generate_module_eus(rt_exam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_exam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rt_exam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rt_exam_generate_messages rt_exam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/srv/move.srv" NAME_WE)
add_dependencies(rt_exam_generate_messages_eus _rt_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg" NAME_WE)
add_dependencies(rt_exam_generate_messages_eus _rt_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_exam_geneus)
add_dependencies(rt_exam_geneus rt_exam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_exam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_exam
)

### Generating Services
_generate_srv_lisp(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_exam
)

### Generating Module File
_generate_module_lisp(rt_exam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_exam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rt_exam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rt_exam_generate_messages rt_exam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/srv/move.srv" NAME_WE)
add_dependencies(rt_exam_generate_messages_lisp _rt_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg" NAME_WE)
add_dependencies(rt_exam_generate_messages_lisp _rt_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_exam_genlisp)
add_dependencies(rt_exam_genlisp rt_exam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_exam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_exam
)

### Generating Services
_generate_srv_nodejs(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_exam
)

### Generating Module File
_generate_module_nodejs(rt_exam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_exam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rt_exam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rt_exam_generate_messages rt_exam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/srv/move.srv" NAME_WE)
add_dependencies(rt_exam_generate_messages_nodejs _rt_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg" NAME_WE)
add_dependencies(rt_exam_generate_messages_nodejs _rt_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_exam_gennodejs)
add_dependencies(rt_exam_gennodejs rt_exam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_exam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_exam
)

### Generating Services
_generate_srv_py(rt_exam
  "/home/acer/houman-rtech/src/rt_exam/srv/move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_exam
)

### Generating Module File
_generate_module_py(rt_exam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_exam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rt_exam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rt_exam_generate_messages rt_exam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/srv/move.srv" NAME_WE)
add_dependencies(rt_exam_generate_messages_py _rt_exam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/acer/houman-rtech/src/rt_exam/msg/rotate.msg" NAME_WE)
add_dependencies(rt_exam_generate_messages_py _rt_exam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt_exam_genpy)
add_dependencies(rt_exam_genpy rt_exam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt_exam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt_exam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rt_exam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt_exam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rt_exam_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt_exam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rt_exam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_exam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt_exam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rt_exam_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_exam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_exam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt_exam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rt_exam_generate_messages_py std_msgs_generate_messages_py)
endif()
