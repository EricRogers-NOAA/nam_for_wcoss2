#!/bin/sh

LMOD_EXACT_MATCH=no
module load prod_util/2.0.8
machine=$(getsystem)

if [ "$machine" = "IBM" ] || [ "$machine" = "Cray" ] || [ "$machine" = "Dell" ]; then
   echo " "
   echo " You are on WCOSS:  $(getsystem)"
elif [ "$machine" = "Cactus" ] ; then
   echo " "
   echo " You are on Cactus:  $(getsystem)"
elif [ "$machine" = "Dogwood" ] ; then
   echo " "
   echo " You are on Dogwood:  $(getsystem)"
else
   echo " "
   echo " Your machine, $machine, is not recognized as a WCOSS machine."
   echo " The script $0 cannot continue.  Aborting!"
   echo " "
   exit
fi
echo " "

set -x

###machine_lc=${machine,,} # Get lower case
machine=wcoss2
machine_lc=wcoss2

if [ "$machine" = "Cray" ] ; then
#
#  NOTE:  DO NOT COMPILE WGRIB2 WITH IOBUF
#  WGRIB2 DOES WORK WITH MODULE IOBUF on CRAY
#      module unload iobuf
#
   module unload iobuf
   export CC=gcc
   export FC=gfortran
   makefile=makefile_wcoss_cray
elif [ "$machine" = "Dell" ]; then
   export CC=icc
   export FC=ifort
   export COMP_SYS=intel_linux
   makefile=makefile_wcoss_dell
elif [ "$machine" = "wcoss2" ]; then
   export CC=cc
   export FC=ftn
   export COMP_SYS=intel_linux
   makefile=makefile_wcoss2
elif [ "$machine" = "IBM" ]; then
   export CC=gcc
   export FC=gfortran
   makefile=makefile_wcoss_ibm
elif [ "$machine" = "Theia" ]; then
   export CC=gcc
   export FC=gfortran
   makefile=makefile_wcoss_Theia
else
   makefile=makefile
fi

pwd=$(pwd)
dir_modules=${pwd}/../../modulefiles/build_wgrib2/${machine_lc}

# Load required modules
###source /apps/prod/lmodules/startLmod
module unload cce cpe-cray
module load intel/19.1.3.304 PrgEnv-intel/8.1.0
module load craype/2.7.6
module load cray-mpich/8.1.7
module load envvar/1.0
module use $dir_modules/
source ${dir_modules}/$1
module list

make -f $makefile
make -f $makefile install
make -f $makefile clean
