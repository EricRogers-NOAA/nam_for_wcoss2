SHELL=/bin/sh

set -x

####################################################################################################
#
# post using module compile standard
#
# 10/15 Lin Gan:        Create module load version
# 01/16 Lin Gan:	Update to use GFS Vertical Structure
# 07/16 J. Carley:      Generalize for other machines using modules
#
#####################################################################################################
#####################################################################################################

###source /apps/prod/lmodules/startLmod
###module purge
module load envvar/1.0
machine=wcoss2

# Lin Gan modifiy to use NCO vertical structure prefix for NCO deployment - 20160131
moduledir1=`dirname $(readlink -f ../modulefiles/post)`
moduledir=$moduledir1/post
module use $moduledir
echo $moduledir
source $moduledir/v7.0.0-${machine}

module list

cd ncep_post.fd
make -f makefile_module clean
make -f makefile_module 

cp ncep_post ../../../../exec/nam_ncep_post
