# Install script for directory: /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "PRODUCTION")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/libsrc/wrflib/cmake_install.cmake")
  include("/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/ncdiag/cmake_install.cmake")
  include("/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/fv3gfs_ncio/cmake_install.cmake")
  include("/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
