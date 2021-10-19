set -x
# runs in ksh

hr=37

while [ $hr -le 60 ] ; do

###area="alaska conus firewx hawaii prico"
area="alaska conus hawaii prico"

for reg in $area 
do
  cat run_nam_prdgen_nests_tm00.sh | sed s/FHR/${hr}/ | sed s/DOMAIN/$reg/ > run_nam_prdgen_${reg}_f${hr}.sh
  qsub run_nam_prdgen_${reg}_f${hr}.sh
  sleep 5

done
  let "hr=hr+1"
  typeset -Z2 hr

done

