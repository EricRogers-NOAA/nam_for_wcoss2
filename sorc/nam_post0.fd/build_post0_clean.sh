set -x

module purge
module use -a modulefiles
module load modulefile.nam_post0_wcoss2
make clean
