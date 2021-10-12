#!/bin/bash

#PBS -N nam_catchup_analysis_tm06
#PBS -l place=vscatter,select=16:ncpus=128:mpiprocs=32:ompthreads=1:mem=500GB
#PBS -l walltime=00:15:00
#PBS -j oe
#PBS -q dev
#PBS -A NAM-DEV
#PBS -l debug=true

set -ax

export ntasks=512
export ppn=32
export threads=1

module purge
module load envvar/1.0
module load PrgEnv-intel/8.1.0
module load craype/2.7.8
module load intel/19.1.3.304
module load cray-mpich/8.1.7
module load cray-pals/1.0.12

module load prod_util/2.0.5
module load prod_envir/2.0.4
module load crtm/2.3.0
module load cfp/2.0.4
module load netcdf/4.7.4

##module load hdf5-parallel/1.10.6
##module load netcdf-hdf5parallel/4.7.4

# OMP settings
export OMP_PLACES=cores
export OMP_NUM_THREADS=$threads
export OMP_STACKSIZE=1G

DATA=/lfs/h2/emc/stmp/$LOGNAME/testnamgsi
rm -rf $DATA
mkdir -p $DATA
cd $DATA

cp /lfs/h2/emc/ptmp/Eric.Rogers/inputgsi.tm06/* .


EXECnam=/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/exec/nam_gsi

cp $EXECnam ./gsi.x

qstat -f $PBS_JOBID

APRUN="mpiexec -n $ntasks -ppn $ppn --cpu-bind core --depth $threads"

$APRUN $DATA/gsi.x < gsiparm.anl 1> stdout 2> stderr
rc=$?

exit

