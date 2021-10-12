#!/bin/sh
#PBS -N nam_analysis_alaska_12
#PBS -l place=vscatter,select=11:ncpus=128:mpiprocs=16:ompthreads=8:mem=500GB
#PBS -l walltime=00:20:00
#PBS -e /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/logs/nam_analysis_alaska_12.out
#PBS -o /lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/logs/nam_analysis_alaska_12.out
#PBS -q dev
#PBS -A NAM-DEV
#PBS -l debug=true
#PBS -V

module purge
module load envvar/1.0
module load PrgEnv-intel/8.1.0
module load craype/2.7.8
module load intel/19.1.3.304
module load cray-mpich/8.1.7
module load cray-pals/1.0.12

module load prod_util/2.0.9
module load prod_envir/2.0.5
module load crtm/2.3.0
module load cfp/2.0.4
module load netcdf/4.7.4

set -x

export FI_OFI_RXM_SAR_LIMIT=3145728

export ntasks=176
export ppn=16
export threads=8

# OMP settings
export OMP_PLACES=cores
export OMP_NUM_THREADS=$threads
export OMP_STACKSIZE=1G

export cyc=12
export PDY=20210824
export tmmark=tm00
export envir=canned
export domain=alaska
export nam_ver=v4.2.0
export jobid=jnam_analysis_${domain}_${cyc}.${PBS_JOBID}
export NWROOT=/lfs/h2/emc/lam/noscrub/Eric.Rogers
export PACKAGEROOT=/lfs/h2/emc/lam/noscrub/Eric.Rogers

export MPI_LABELIO=YES
export MP_STDOUTMODE="ORDERED"

export PS4='+ $SECONDS + '
export COMDATEROOT=/lfs/h1/ops/canned/com
export HOMEjobs=/lfs/h2/emc/lam/noscrub/Eric.Rogers/nam.v4.2.0/jobs

#execute J-job

$HOMEjobs/JNAM_ANALYSIS_NEST
