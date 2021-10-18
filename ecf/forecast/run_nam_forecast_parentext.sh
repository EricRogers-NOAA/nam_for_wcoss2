#!/bin/sh
#PBS -N nam_forecast_parentext_12
#PBS -l place=vscatter:excl,select=4:ncpus=128
#PBS -l walltime=00:30:00
#PBS -e /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/logs/nam_forecast_parentext_12.out
#PBS -o /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/logs/nam_forecast_parentext_12.out
#PBS -q dev
#PBS -A NAM-DEV
#PBS -l debug=true
#PBS -V

set -x

module purge
module load envvar/1.0
module load PrgEnv-intel/8.1.0
module load craype/2.7.10
module load intel/19.1.3.304
module load cray-mpich/8.1.9
module load cray-pals/1.0.17

module load prod_util/2.0.9
module load prod_envir/2.0.4
module load cfp/2.0.4
module load hdf5/1.10.6
module load netcdf/4.7.4
module load nemsio/2.5.2
module load libpng/1.6.37
module load libjpeg/9c
module load grib_util/1.2.3

set -x

####export FI_OFI_RXM_SAR_LIMIT=3145728

export ntasks=512
export ppn=128
export threads=1

# OMP settings
export OMP_PLACES=cores
export OMP_NUM_THREADS=$threads
export OMP_STACKSIZE=1G

export cyc=12
export PDY=20210824
export tmmark=tm00
export envir=canned
export nam_ver=v4.2.0
export jobid=jnam_forecast_parentext_${cyc}.${PBS_JOBID}
export NWROOT=/lfs/h2/emc/lam/noscrub/Eric.Rogers
export PACKAGEROOT=/lfs/h2/emc/lam/noscrub/Eric.Rogers

export MPI_LABELIO=YES
export MP_STDOUTMODE="ORDERED"

export PS4='+ $SECONDS + '
export COMDATEROOT=/lfs/h1/ops/canned/com
export HOMEjobs=/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/jobs

#execute J-job

$HOMEjobs/JNAM_FORECAST_PARENTEXT
