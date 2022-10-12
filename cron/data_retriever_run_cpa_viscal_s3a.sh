#!/bin/sh


for days_ago in {0..5}
do
   export month=`date -d $days_ago' days ago' +%m`
   export year=`date -d $days_ago' days ago' +%Y`
   export day=`date -d $days_ago' days ago' +%d`
   $GWS_PATH/software/slstr_calibration_ftp_retriever/download_viscal_ompc.sh S3A $year $month $day
done

