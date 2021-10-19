set -x
# runs in ksh

hr=37

while [ $hr -le 60 ] ; do

####area="alaska conus hawaii prico firewx"
area="alaska conus hawaii prico"

for reg in $area
do
  if [ $reg = alaska ] ; then
   mem=60
  elif [ $reg = conus ] ; then
   mem=100
  else
   mem=28
  fi
  cat run_nam_post_nests_template.sh | sed s/FHR/${hr}/ | sed s/DOMAIN/$reg/ | sed s/MEM/$mem/ > run_nam_post_${reg}_tm00_f${hr}.sh
  qsub run_nam_post_${reg}_tm00_f${hr}.sh
  sleep 10
done
  let "hr=hr+1"
  typeset -Z2 hr
done

