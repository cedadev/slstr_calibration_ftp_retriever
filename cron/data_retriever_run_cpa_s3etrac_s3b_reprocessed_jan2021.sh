#!/bin/sh

# 21-Jan-2021
#
# script to get SLSTR-B reprocessed data - 09-May-2018 to 15-Jan-2020
#


export year=2018
for month in {05..12}
do
#echo $year-$month
   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_desert_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/DESERT/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_snow_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/SNOW/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_rayleigh_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/RAYLEIGH/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_glitter_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/GLITTER/$year-$month >/dev/null 2>&1

done

export year=2019
for month in {01..12}
do
#echo $year-$month
   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_desert_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/DESERT/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_snow_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/SNOW/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_rayleigh_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/RAYLEIGH/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_glitter_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/GLITTER/$year-$month >/dev/null 2>&1

done

export year=2020
for month in {01..01}
do
#echo $year-$month
   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_desert_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/DESERT/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_snow_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/SNOW/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_rayleigh_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/RAYLEIGH/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_glitter_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/SLSTR/GLITTER/$year-$month >/dev/null 2>&1

done

