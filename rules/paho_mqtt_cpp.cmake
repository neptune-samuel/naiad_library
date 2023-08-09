
include(ExternalProject)

set(PAHOMQTTCPP_URL            ${ZIPS_DIR}/paho.mqtt.cpp.zip)
set(PAHOMQTTCPP_CMAKE_ARGS     -DPAHO_BUILD_STATIC=ON -DCMAKE_PREFIX_PATH=${LIBS_INSTALL_DIR} -DCMAKE_INSTALL_PREFIX=${LIBS_INSTALL_DIR} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE})

ExternalProject_Add(pahomqttcpp
    URL                      ${PAHOMQTTCPP_URL}
    CMAKE_ARGS               ${PAHOMQTTCPP_CMAKE_ARGS}
)

