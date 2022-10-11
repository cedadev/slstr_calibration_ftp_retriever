#!/bin/sh

# 24-Sept-2020
#
# script to get OLCI-B reprocessed data - May-2018 to Oct-2019
#

export year=2018
for month in {05..12}
do
#echo $year-$month
   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_desert_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/OLCI/DESERT/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_snow_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/OLCI/SNOW/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_rayleigh_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/OLCI/RAYLEIGH/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_glitter_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/OLCI/GLITTER/$year-$month >/dev/null 2>&1

done

export year=2019
for month in {01..10}
do
#echo $year-$month
   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_desert_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/OLCI/DESERT/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_snow_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/OLCI/SNOW/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_rayleigh_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/OLCI/RAYLEIGH/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_glitter_s3b.cfg  -v -CeF -p /S3ETRAC/S3B/OLCI/GLITTER/$year-$month >/dev/null 2>&1

done


