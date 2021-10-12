set -x
# runs in ksh

hr=01

while [ $hr -le 09 ] ; do

area="alaska conus hawaii prico firewx"

for reg in $area
do
  if [ $reg = alaska ] ; then
   mem=60
  elif [ $reg = conus ] ; then
   mem=80
  else
   mem=28
  fi
  cat run_nam_post_nests_template.sh | sed s/FHR/${hr}/ | sed s/DOMAIN/$reg/ | sed s/MEM/$mem/ > run_nam_post_${reg}_tm00_f${hr}.sh
  qsub run_nam_post_${reg}_tm00_f${hr}.sh
  sleep 20
done
  let "hr=hr+1"
  typeset -Z2 hr
done

