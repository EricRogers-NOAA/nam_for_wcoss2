#!/bin/sh
#PBS -N nam_catchup_coldstart_partialcyc_prico_12
#PBS -l select=1:ncpus=2:mem=8GB
#PBS -l walltime=00:20:00
#PBS -e /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/logs/nam_catchup_coldstart_partialcyc_prico_12.out
#PBS -o /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/logs/nam_catchup_coldstart_partialcyc_prico_12.out
#PBS -q dev
#PBS -A NAM-DEV
#PBS -l debug=true
#PBS -V

module purge
module load envvar/1.0
module load PrgEnv-intel/8.1.0
module load intel/19.1.3.304
module load craype/2.7.10
module load cray-mpich/8.1.9
module load cray-pals/1.0.17

# Loading NetCDF 4
module load netcdf/4.7.4
module load prod_util/2.0.10
module load prod_envir/2.0.5
module load libjpeg/9c
module load grib_util/1.2.3

set -x

export cyc=12
export PDY=20210824
export tmmark=tm00
export envir=canned
export nam_ver=v4.2.0
export domain=prico
export jobid=jnam_catchup_coldstart_partialcyc_${domain}_${cyc}.${PBS_JOBID}
export NWROOT=/lfs/h2/emc/lam/noscrub/Eric.Rogers

export MPI_LABELIO=YES
export MP_STDOUTMODE="ORDERED"

export PS4='+ $SECONDS + '
export COMDATEROOT=/lfs/h1/ops/canned/com
export HOMEjobs=/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/jobs

#execute J-job

$HOMEjobs/JNAM_COLDSTART_PARTIALCYC_NEST







