#!/bin/bash

SORCnam=$(pwd)
MACHID=wcoss2

####source /apps/prod/lmodules/startLmod
module purge
module load envvar/1.0

moduledir=`dirname $(readlink -f ../modulefiles/${MACHID})`
module use ${moduledir}
source ${moduledir}/${MACHID}/build/v4.0.0_build

set -x
export OUTmain=`dirname $(readlink -f ../exec/${MACHID}.exec/ )`
export OUTDIR=${OUTmain}

make -f ./Makefile

cd $SORCnam
# Now build ref2nemsio
./build_ref2nemsio.sh > build_ref2nemsio.log 2>> build_ref2nemsio.log

# Now build nam_post0 code
cd ${SORCnam}/nam_post0.fd
./build_post0.sh > build_post0.log 2>> build_post0.log

# Now build ncep post
cd ${SORCnam}/nam_nceppost.fd/sorc
./build_ncep_post.sh > build_post.log 2>> build_post.log

# Now build NMMB forecast model code
cd ${SORCnam}/nam_nems_nmmb.fd/src
##./build.sh > build_fcst.log 2>> build_fcst.log

# Now build land-surface utility codes
cd ${SORCnam}/nam_land_utilities.fd/sorc
./build_emcsfc.sh > build_emcsfc.log 2>> build_emcsfc.log

# Now build the GSI
cd $SORCnam
./build_gsi.sh > build_gsi.log 2>> build_gsi.log

cd $SORCnam

echo -e " I do not build the following external source code: \n" \
     "   nam_nps.fd "
echo " Please compile this using the ./nam.v4.2.0/sorc/nam_nps.fd/sorc/build.sh script."

exit 0
