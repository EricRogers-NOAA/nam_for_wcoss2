set -x

  . /usrx/local/prod/lmod/lmod/init/sh
module purge
module use -a modulefiles
module load modulefile.nam_post0_wcoss_p3_d
make clean
