# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "interface: 1 messages, 4 services")

set(MSG_I_FLAGS "-Iinterface:/home/wqh/catkin_ws/src/interface/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(interface_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(interface
  "/home/wqh/catkin_ws/src/interface/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
)

### Generating Services
_generate_srv_cpp(interface
  "/home/wqh/catkin_ws/src/interface/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
)
_generate_srv_cpp(interface
  "/home/wqh/catkin_ws/src/interface/srv/parameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
)
_generate_srv_cpp(interface
  "/home/wqh/catkin_ws/src/interface/srv/KeepStaticParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
)
_generate_srv_cpp(interface
  "/home/wqh/catkin_ws/src/interface/srv/converter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
)

### Generating Module File
_generate_module_cpp(interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(interface_generate_messages interface_generate_messages_cpp)

# target for backward compatibility
add_custom_target(interface_gencpp)
add_dependencies(interface_gencpp interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interface_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(interface
  "/home/wqh/catkin_ws/src/interface/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
)

### Generating Services
_generate_srv_lisp(interface
  "/home/wqh/catkin_ws/src/interface/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
)
_generate_srv_lisp(interface
  "/home/wqh/catkin_ws/src/interface/srv/parameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
)
_generate_srv_lisp(interface
  "/home/wqh/catkin_ws/src/interface/srv/KeepStaticParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
)
_generate_srv_lisp(interface
  "/home/wqh/catkin_ws/src/interface/srv/converter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
)

### Generating Module File
_generate_module_lisp(interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(interface_generate_messages interface_generate_messages_lisp)

# target for backward compatibility
add_custom_target(interface_genlisp)
add_dependencies(interface_genlisp interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interface_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(interface
  "/home/wqh/catkin_ws/src/interface/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
)

### Generating Services
_generate_srv_py(interface
  "/home/wqh/catkin_ws/src/interface/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
)
_generate_srv_py(interface
  "/home/wqh/catkin_ws/src/interface/srv/parameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
)
_generate_srv_py(interface
  "/home/wqh/catkin_ws/src/interface/srv/KeepStaticParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
)
_generate_srv_py(interface
  "/home/wqh/catkin_ws/src/interface/srv/converter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
)

### Generating Module File
_generate_module_py(interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(interface_generate_messages interface_generate_messages_py)

# target for backward compatibility
add_custom_target(interface_genpy)
add_dependencies(interface_genpy interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(interface_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(interface_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(interface_generate_messages_py std_msgs_generate_messages_py)
