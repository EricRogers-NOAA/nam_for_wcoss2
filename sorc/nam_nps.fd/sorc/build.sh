#!/bin/bash

###source /apps/prod/lmodules/startLmod
module unload cce cpe-cray
module load envvar/1.0
module load PrgEnv-intel/8.1.0
module load intel/19.1.3.304
module load craype/2.7.6
module load cray-mpich/8.1.7

cd NMMB_init/NPS
./clean

moduledir=`dirname $(readlink -f ../../../modulefiles/wcoss2)`
module use ${moduledir}
source ${moduledir}/wcoss2/v4.1.0_build

./conf wcoss2

module list

cp configure.nps_wcoss2_dmpara configure.nps

OUTDIR_WCOSS2=../../../../../exec/
OUTDIR=../../exec

mkdir -p $OUTDIR

./compile geogrid
cp -L geogrid.exe ${OUTDIR}/nam_geogrid

./compile metgrid
cp -L metgrid.exe ${OUTDIR}/nam_metgrid

./compile ungrib
cp -L ungrib.exe  ${OUTDIR}/nam_ungrib

./compile nemsinterp
cp -L nemsinterp.exe ${OUTDIR}/nam_nemsinterp

# this clean might not be necessary, but seems like a good idea
./clean

cp configure.nps_wcoss2_serial configure.nps

./compile metgrid
cp -L metgrid.exe ${OUTDIR}/nam_metgrid_boco

./compile ungrib
cp -L ungrib/src/ungribs.exe  ${OUTDIR}/nam_ungrib_boco

# not needed
##./compile nemsinterp
##cp -L nemsinterp.exe ${OUTDIR}/nam_nemsinterp_boco

pwd
cp ${OUTDIR}/* ${OUTDIR_WCOSS2}/.
cd ../..
