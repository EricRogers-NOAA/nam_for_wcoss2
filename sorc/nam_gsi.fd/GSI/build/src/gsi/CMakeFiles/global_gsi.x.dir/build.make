# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /apps/spack/cmake/3.20.2/intel/19.1.3.304/utnbptm3hrf7gppztidueu4jogfgemut/bin/cmake

# The command to remove a file.
RM = /apps/spack/cmake/3.20.2/intel/19.1.3.304/utnbptm3hrf7gppztidueu4jogfgemut/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build

# Include any dependencies generated for this target.
include src/gsi/CMakeFiles/global_gsi.x.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/gsi/CMakeFiles/global_gsi.x.dir/compiler_depend.make

# Include the progress variables for this target.
include src/gsi/CMakeFiles/global_gsi.x.dir/progress.make

# Include the compile flags for this target's objects.
include src/gsi/CMakeFiles/global_gsi.x.dir/flags.make

src/gsi/CMakeFiles/global_gsi.x.dir/gsimain.f90.o: src/gsi/CMakeFiles/global_gsi.x.dir/flags.make
src/gsi/CMakeFiles/global_gsi.x.dir/gsimain.f90.o: ../src/gsi/gsimain.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object src/gsi/CMakeFiles/global_gsi.x.dir/gsimain.f90.o"
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi && /opt/cray/pe/craype/2.7.10/bin/ftn $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -DPOUND_FOR_STRINGIFY -O3 -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ -qopenmp  -DNMMB_CLOUDANALYSIS -c /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi/gsimain.f90 -o CMakeFiles/global_gsi.x.dir/gsimain.f90.o

src/gsi/CMakeFiles/global_gsi.x.dir/gsimain.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/global_gsi.x.dir/gsimain.f90.i"
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi && /opt/cray/pe/craype/2.7.10/bin/ftn $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -DPOUND_FOR_STRINGIFY -O3 -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ -qopenmp  -DNMMB_CLOUDANALYSIS -E /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi/gsimain.f90 > CMakeFiles/global_gsi.x.dir/gsimain.f90.i

src/gsi/CMakeFiles/global_gsi.x.dir/gsimain.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/global_gsi.x.dir/gsimain.f90.s"
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi && /opt/cray/pe/craype/2.7.10/bin/ftn $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -DPOUND_FOR_STRINGIFY -O3 -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ -qopenmp  -DNMMB_CLOUDANALYSIS -S /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi/gsimain.f90 -o CMakeFiles/global_gsi.x.dir/gsimain.f90.s

src/gsi/CMakeFiles/global_gsi.x.dir/gsimod.F90.o: src/gsi/CMakeFiles/global_gsi.x.dir/flags.make
src/gsi/CMakeFiles/global_gsi.x.dir/gsimod.F90.o: ../src/gsi/gsimod.F90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building Fortran object src/gsi/CMakeFiles/global_gsi.x.dir/gsimod.F90.o"
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi && /opt/cray/pe/craype/2.7.10/bin/ftn $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -DPOUND_FOR_STRINGIFY -O3 -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ -qopenmp  -DNMMB_CLOUDANALYSIS -c /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi/gsimod.F90 -o CMakeFiles/global_gsi.x.dir/gsimod.F90.o

src/gsi/CMakeFiles/global_gsi.x.dir/gsimod.F90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/global_gsi.x.dir/gsimod.F90.i"
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi && /opt/cray/pe/craype/2.7.10/bin/ftn $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -DPOUND_FOR_STRINGIFY -O3 -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ -qopenmp  -DNMMB_CLOUDANALYSIS -E /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi/gsimod.F90 > CMakeFiles/global_gsi.x.dir/gsimod.F90.i

src/gsi/CMakeFiles/global_gsi.x.dir/gsimod.F90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/global_gsi.x.dir/gsimod.F90.s"
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi && /opt/cray/pe/craype/2.7.10/bin/ftn $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -DPOUND_FOR_STRINGIFY -O3 -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ -qopenmp  -DNMMB_CLOUDANALYSIS -S /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi/gsimod.F90 -o CMakeFiles/global_gsi.x.dir/gsimod.F90.s

# Object files for target global_gsi.x
global_gsi_x_OBJECTS = \
"CMakeFiles/global_gsi.x.dir/gsimain.f90.o" \
"CMakeFiles/global_gsi.x.dir/gsimod.F90.o"

# External object files for target global_gsi.x
global_gsi_x_EXTERNAL_OBJECTS =

../exec/global_gsi.x: src/gsi/CMakeFiles/global_gsi.x.dir/gsimain.f90.o
../exec/global_gsi.x: src/gsi/CMakeFiles/global_gsi.x.dir/gsimod.F90.o
../exec/global_gsi.x: src/gsi/CMakeFiles/global_gsi.x.dir/build.make
../exec/global_gsi.x: lib/libgsilib_shrd.a
../exec/global_gsi.x: lib/libgsilib_wrf.a
../exec/global_gsi.x: lib/libgsilib_shrd.a
../exec/global_gsi.x: /pe/intel/compilers_and_libraries_2020.4.304/linux/mkl/lib/intel64_lin/libmkl_intel_lp64.so
../exec/global_gsi.x: /pe/intel/compilers_and_libraries_2020.4.304/linux/mkl/lib/intel64_lin/libmkl_intel_thread.so
../exec/global_gsi.x: /pe/intel/compilers_and_libraries_2020.4.304/linux/mkl/lib/intel64_lin/libmkl_core.so
../exec/global_gsi.x: /pe/intel/compilers_and_libraries_2020.4.304/linux/compiler/lib/intel64_lin/libiomp5.so
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/bacio/2.4.1/lib/libbacio_4.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/bufr/11.4.0/lib/libbufr_d_DA.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/sigio/2.3.2/lib/libsigio.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/cray-mpich/8.1.4/nemsio/2.5.2/lib64/libnemsio.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/crtm/2.3.0/lib/libcrtm.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/sp/2.3.3/lib/libsp_d.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/sfcio/1.4.1/lib/libsfcio.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/cray-mpich/8.1.4/w3emc/2.7.3/lib/libw3emc_d.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/w3nco/2.4.1/lib/libw3nco_d.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/ip/3.3.3/lib/libip_d.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/bacio/2.4.1/lib/libbacio_4.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/bufr/11.4.0/lib/libbufr_d_DA.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/sigio/2.3.2/lib/libsigio.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/cray-mpich/8.1.4/nemsio/2.5.2/lib64/libnemsio.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/crtm/2.3.0/lib/libcrtm.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/sp/2.3.3/lib/libsp_d.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/sfcio/1.4.1/lib/libsfcio.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/cray-mpich/8.1.4/w3emc/2.7.3/lib/libw3emc_d.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/w3nco/2.4.1/lib/libw3nco_d.a
../exec/global_gsi.x: /apps/ops/prod/libs/intel/19.1.3.304/ip/3.3.3/lib/libip_d.a
../exec/global_gsi.x: lib/libncdiag.a
../exec/global_gsi.x: lib/libWRFLIB.a
../exec/global_gsi.x: lib/libfv3gfs_ncio.a
../exec/global_gsi.x: src/gsi/CMakeFiles/global_gsi.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking Fortran executable ../../../exec/global_gsi.x"
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/global_gsi.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/gsi/CMakeFiles/global_gsi.x.dir/build: ../exec/global_gsi.x
.PHONY : src/gsi/CMakeFiles/global_gsi.x.dir/build

src/gsi/CMakeFiles/global_gsi.x.dir/clean:
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi && $(CMAKE_COMMAND) -P CMakeFiles/global_gsi.x.dir/cmake_clean.cmake
.PHONY : src/gsi/CMakeFiles/global_gsi.x.dir/clean

src/gsi/CMakeFiles/global_gsi.x.dir/depend:
	cd /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/src/gsi /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/sorc/nam_gsi.fd/GSI/build/src/gsi/CMakeFiles/global_gsi.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/gsi/CMakeFiles/global_gsi.x.dir/depend

