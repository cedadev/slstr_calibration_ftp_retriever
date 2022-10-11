#!/bin/bash
# get todays date

export model=$1

copy_completed=$(/usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_mon_$model.cfg -vL | grep is_finished)

echo $copy_completed

if [[ "$copy_completed" =~ "is_finished" ]]; then

  $GWS_PATH/software/slstr_calibration_ftp_retriever/download_mpc_longtermtrends.sh $model

  # loop over the last 5 days
  for dayago in {0..7}
  do

    export month=`date -d $dayago' days ago' +%m`
    export year=`date -d $dayago' days ago' +%Y`
    export day=`date -d $dayago' days ago' +%d`

    #call the scripts in turn
    echo $model $year $month $day $year
    $GWS_PATH/software/slstr_calibration_ftp_retriever/download_mpc_monitoring.sh $model $year $month $day $year
    $GWS_PATH/software/slstr_calibration_ftp_retriever/download_mpc_monitoring.sh $model $year $month $day bb_counts
    $GWS_PATH/software/slstr_calibration_ftp_retriever/download_mpc_monitoring.sh $model $year $month $day bb_temps
    $GWS_PATH/software/slstr_calibration_ftp_retriever/download_mpc_monitoring.sh $model $year $month $day viscal_counts

  done

fi

rm $GWS_PATH/public/$model\_monitoring/mon_lock.txt
rm $GWS_PATH/public/$model\_monitoring/mpc_mon_lock_temp.txt
