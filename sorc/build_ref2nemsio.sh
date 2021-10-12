#!/bin/bash

set -x

cd ..
pwd=$(pwd)
dir_root=$pwd

[ -d $dir_root/exec ] || mkdir -p $dir_root/exec

source /apps/prod/lmodules/startLmod
module purge
module load envvar/1.0

dir_modules=$dir_root/modulefiles
module use $dir_modules/
source $dir_modules/modulefile.nam_ref2nemsio
module list

dir_refsorc=$dir_root/sorc/nam_ref2nemsio.fd
cd $dir_refsorc
export OUTDIR=$dir_root/exec
make -f makefile
mv nam_ref2nemsio $OUTDIR/.
