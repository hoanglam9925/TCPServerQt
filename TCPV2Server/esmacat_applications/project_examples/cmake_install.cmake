# Install script for directory: /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pi/Desktop/esmacat_master_software/install")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/arm-linux-gnueabihf-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/analog_input/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/arduino_shield/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/motor_driver/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/loadcell_interface/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/digital_io/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/motor_position_control/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/motor_control_w_potentiometer/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/led_on/cmake_install.cmake")
  include("/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/demo_kit/cmake_install.cmake")

endif()

