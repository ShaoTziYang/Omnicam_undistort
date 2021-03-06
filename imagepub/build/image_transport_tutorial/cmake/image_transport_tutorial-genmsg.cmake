# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "image_transport_tutorial: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iimage_transport_tutorial:/home/tyshao/Desktop/nodes/imagepub/src/image_transport_tutorial/msg;-Isensor_msgs:/opt/ros/hydro/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(image_transport_tutorial_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(image_transport_tutorial
  "/home/tyshao/Desktop/nodes/imagepub/src/image_transport_tutorial/msg/ResizedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_transport_tutorial
)

### Generating Services

### Generating Module File
_generate_module_cpp(image_transport_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_transport_tutorial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(image_transport_tutorial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(image_transport_tutorial_generate_messages image_transport_tutorial_generate_messages_cpp)

# target for backward compatibility
add_custom_target(image_transport_tutorial_gencpp)
add_dependencies(image_transport_tutorial_gencpp image_transport_tutorial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_transport_tutorial_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(image_transport_tutorial
  "/home/tyshao/Desktop/nodes/imagepub/src/image_transport_tutorial/msg/ResizedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_transport_tutorial
)

### Generating Services

### Generating Module File
_generate_module_lisp(image_transport_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_transport_tutorial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(image_transport_tutorial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(image_transport_tutorial_generate_messages image_transport_tutorial_generate_messages_lisp)

# target for backward compatibility
add_custom_target(image_transport_tutorial_genlisp)
add_dependencies(image_transport_tutorial_genlisp image_transport_tutorial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_transport_tutorial_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(image_transport_tutorial
  "/home/tyshao/Desktop/nodes/imagepub/src/image_transport_tutorial/msg/ResizedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial
)

### Generating Services

### Generating Module File
_generate_module_py(image_transport_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(image_transport_tutorial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(image_transport_tutorial_generate_messages image_transport_tutorial_generate_messages_py)

# target for backward compatibility
add_custom_target(image_transport_tutorial_genpy)
add_dependencies(image_transport_tutorial_genpy image_transport_tutorial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_transport_tutorial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_transport_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_transport_tutorial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(image_transport_tutorial_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_transport_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_transport_tutorial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(image_transport_tutorial_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(image_transport_tutorial_generate_messages_py sensor_msgs_generate_messages_py)
