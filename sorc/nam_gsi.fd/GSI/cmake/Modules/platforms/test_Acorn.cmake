macro (setAcorn)
	message("Setting paths for Acorn")
  option(FIND_HDF5 "Try to Find HDF5 libraries" ON)
  option(FIND_HDF5_HL "Try to Find HDF5 libraries" OFF)

  set(HOST_FLAG "-xHOST" CACHE INTERNAL "Host Flag")
  set(MKL_FLAG "-mkl"  CACHE INTERNAL "MKL Flag")
  set(GSI_Intel_Platform_FLAGS "-DPOUND_FOR_STRINGIFY -fp-model strict -assume byterecl -convert big_endian -implicitnone -D_REAL8_ ${OpenMP_Fortran_FLAGS} ${MPI_Fortran_COMPILE_FLAGS} -O3" CACHE INTERNAL "GSI Fortran Flags")
  set(GSI_LDFLAGS "${OpenMP_Fortran_FLAGS} ${MKL_FLAG}" CACHE INTERNAL "")
  set(ENKF_Platform_FLAGS "-O3 -fp-model strict -convert big_endian -assume byterecl -implicitnone  -DGFS -D_REAL8_  ${OpenMP_Fortran_FLAGS} " CACHE INTERNAL "ENKF Fortran Flags")

  set(HDF5_USE_STATIC_LIBRARIES "ON" CACHE INTERNAL "" )
  if( NOT DEFINED ENV{COREPATH} )
    set(COREPATH "/gpfs/dell1/nco/ops/nwprod/lib"  )
  else()
    set(COREPATH $ENV{COREPATH}  )
  endif()
  if( NOT DEFINED ENV{CRTM_INC} )
    set(CRTM_BASE "/gpfs/dell1/nco/ops/nwprod/lib/crtm"  )
  endif()
  if( NOT DEFINED ENV{NETCDF_VER} )
    set(NETCDF_VER "3.6.3" )
  endif()
  if( NOT DEFINED ENV{BACIO_VER} )
    set(BACIO_VER "2.4.1" )
  endif()
  if( NOT DEFINED ENV{BUFR_VER} )
    set(BUFR_VER "11.4.0" )
  endif()
  if( NOT DEFINED ENV{CRTM_VER} )
    set(CRTM_VER "2.3.0" )
  endif()
  if( NOT DEFINED ENV{NEMSIO_VER} )
    set(NEMSIO_VER "2.5.2" )
  endif()
  if( NOT DEFINED ENV{SFCIO_VER} )
    set(SFCIO_VER "1.4.1" )
  endif()
  if( NOT DEFINED ENV{SIGIO_VER} )
    set(SIGIO_VER "2.3.2" )
  endif()
  if( NOT DEFINED ENV{SP_VER} )
    set(SP_VER "2.3.3" )
  endif()
  if( NOT DEFINED ENV{W3EMC_VER} )
    set(W3EMC_VER "2.7.3" )
  endif()
  if( NOT DEFINED ENV{W3NCO_VER} )
    set(W3NCO_VER "2.4.1" )
  endif()
endmacro()
