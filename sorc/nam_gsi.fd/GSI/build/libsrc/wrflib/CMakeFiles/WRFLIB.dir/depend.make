# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Note that incremental build could trigger a call to cmake_copy_f90_mod on each re-build
libsrc/wrflib/CMakeFiles/WRFLIB.dir/field_routines.F90.o: \
 /apps/prod/hpc-stack/intel-19.1.3.304/cray-mpich-8.1.4/netcdf/4.7.4/include/netcdf.inc \
 ../libsrc/wrflib/wrf_status_codes.h
libsrc/wrflib/CMakeFiles/WRFLIB.dir/field_routines.F90.o: libsrc/wrflib/CMakeFiles/WRFLIB.dir/ext_ncd_support_routines.mod.stamp
libsrc/wrflib/CMakeFiles/WRFLIB.dir/field_routines.F90.o: libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_data.mod.stamp
libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.F90.o: \
 ../libsrc/wrflib/model_data_order.inc
libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.F90.o.provides.build: libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.mod.stamp
libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.mod.stamp: libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.F90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod include/module_driver_constants.mod libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.mod.stamp Intel
libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.F90.o.provides.build:
	$(CMAKE_COMMAND) -E touch libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.F90.o.provides.build
libsrc/wrflib/CMakeFiles/WRFLIB.dir/build: libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.F90.o.provides.build
libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.F90.o: libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_driver_constants.mod.stamp
libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.F90.o.provides.build: libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.mod.stamp
libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.mod.stamp: libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.F90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod include/module_machine.mod libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.mod.stamp Intel
libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.F90.o.provides.build:
	$(CMAKE_COMMAND) -E touch libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.F90.o.provides.build
libsrc/wrflib/CMakeFiles/WRFLIB.dir/build: libsrc/wrflib/CMakeFiles/WRFLIB.dir/module_machine.F90.o.provides.build
libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_io.f90.o: \
 /apps/prod/hpc-stack/intel-19.1.3.304/cray-mpich-8.1.4/netcdf/4.7.4/include/netcdf.inc \
 ../libsrc/wrflib/wrf_status_codes.h
libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_io.f90.o.provides.build: libsrc/wrflib/CMakeFiles/WRFLIB.dir/ext_ncd_support_routines.mod.stamp
libsrc/wrflib/CMakeFiles/WRFLIB.dir/ext_ncd_support_routines.mod.stamp: libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_io.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod include/ext_ncd_support_routines.mod libsrc/wrflib/CMakeFiles/WRFLIB.dir/ext_ncd_support_routines.mod.stamp Intel
libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_io.f90.o.provides.build: libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_data.mod.stamp
libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_data.mod.stamp: libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_io.f90.o
	$(CMAKE_COMMAND) -E cmake_copy_f90_mod include/wrf_data.mod libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_data.mod.stamp Intel
libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_io.f90.o.provides.build:
	$(CMAKE_COMMAND) -E touch libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_io.f90.o.provides.build
libsrc/wrflib/CMakeFiles/WRFLIB.dir/build: libsrc/wrflib/CMakeFiles/WRFLIB.dir/wrf_io.f90.o.provides.build
