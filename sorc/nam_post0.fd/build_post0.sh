set -x

BASE=`pwd`
export BASE

###source /apps/prod/lmodules/startLmod
module purge
module load envvar/1.0
moduledir=$BASE/modulefiles
module use ${moduledir}
source $moduledir/modulefile.nam_post0_wcoss2
make clean
make
mv nam_post0 ../../exec/.
