# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Note that incremental build could trigger a call to cmake_copy_f90_mod on each re-build
src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.F90.o.provides.build: src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.mod.stamp: src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.F90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod include/kinds.mod src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.mod.stamp Intel
src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.F90.o.provides.build:
	$(CMAKE_COMMAND) -E touch src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.F90.o.provides.build
src/gsi/CMakeFiles/gsilib_shrd.dir/build: src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.F90.o.provides.build
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.F90.o.provides.build: src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.mod.stamp: src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.F90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod include/mpeu_mpif.mod src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.mod.stamp Intel
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.F90.o.provides.build:
	$(CMAKE_COMMAND) -E touch src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.F90.o.provides.build
src/gsi/CMakeFiles/gsilib_shrd.dir/build: src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.F90.o.provides.build
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.F90.o: src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.F90.o: src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.F90.o: src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.F90.o.provides.build: src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.mod.stamp: src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.F90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod include/mpeu_util.mod src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.mod.stamp Intel
src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.F90.o.provides.build:
	$(CMAKE_COMMAND) -E touch src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.F90.o.provides.build
src/gsi/CMakeFiles/gsilib_shrd.dir/build: src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_util.F90.o.provides.build
src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.F90.o: src/gsi/CMakeFiles/gsilib_shrd.dir/kinds.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.F90.o: src/gsi/CMakeFiles/gsilib_shrd.dir/mpeu_mpif.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.F90.o.provides.build: src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.mod.stamp
src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.mod.stamp: src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.F90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod include/mpimod.mod src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.mod.stamp Intel
src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.F90.o.provides.build:
	$(CMAKE_COMMAND) -E touch src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.F90.o.provides.build
src/gsi/CMakeFiles/gsilib_shrd.dir/build: src/gsi/CMakeFiles/gsilib_shrd.dir/mpimod.F90.o.provides.build
