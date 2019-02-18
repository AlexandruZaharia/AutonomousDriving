# Install script for directory: /home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/src/auto_driving

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build/auto_driving/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/auto_driving/msg" TYPE FILE FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/src/auto_driving/msg/DetectionResult.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/auto_driving/srv" TYPE FILE FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/src/auto_driving/srv/Detection.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/auto_driving/cmake" TYPE FILE FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build/auto_driving/catkin_generated/installspace/auto_driving-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/devel/include/auto_driving")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/devel/share/roseus/ros/auto_driving")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/devel/share/common-lisp/ros/auto_driving")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/devel/share/gennodejs/ros/auto_driving")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/devel/lib/python2.7/dist-packages/auto_driving")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/devel/lib/python2.7/dist-packages/auto_driving")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build/auto_driving/catkin_generated/installspace/auto_driving.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/auto_driving/cmake" TYPE FILE FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build/auto_driving/catkin_generated/installspace/auto_driving-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/auto_driving/cmake" TYPE FILE FILES
    "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build/auto_driving/catkin_generated/installspace/auto_drivingConfig.cmake"
    "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build/auto_driving/catkin_generated/installspace/auto_drivingConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/auto_driving" TYPE FILE FILES "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/src/auto_driving/package.xml")
endif()

