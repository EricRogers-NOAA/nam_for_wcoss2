#!/bin/sh
#PBS -N nam_post_conus_18_f25
#PBS -l select=1:ncpus=28:mem=100GB
#PBS -l walltime=00:20:00
#PBS -e /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/logs/nam_post_conus_f25_18.out
#PBS -o /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/logs/nam_post_conus_f25_18.out
#PBS -q dev
#PBS -A NAM-DEV
#PBS -l debug=true
#PBS -V

set -x

module purge
module load envvar/1.0
module load intel/19.1.3.304
module load PrgEnv-intel/8.1.0
module load craype/2.7.10
module load cray-mpich/8.1.9
module load cray-pals/1.0.17
module load hdf5/1.10.6
module load netcdf/4.7.4
module load prod_util/2.0.10
module load crtm/2.3.0

set -x

export procs=28
export procspernode=28

export cyc=18
export PDY=20210824
export tmmark=tm00
export domain=conus
export envir=canned
export post_times=25
export nam_ver=v4.2.0
export jobid=jnam_post_conus_f25_${cyc}.${PBS_JOBID}
export NWROOT=/lfs/h2/emc/lam/noscrub/Eric.Rogers
export PACKAGEROOT=/lfs/h2/emc/lam/noscrub/Eric.Rogers

export MPI_LABELIO=YES

export PS4='+ $SECONDS + '
export COMDATEROOT=/lfs/h1/ops/canned/com
export HOMEjobs=/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/jobs

export threads=1
export MP_LABELIO=yes
export OMP_NUM_THREADS=$threads
export OMP_PLACES=cores

#execute J-job

$HOMEjobs/JNAM_POST_NEST
