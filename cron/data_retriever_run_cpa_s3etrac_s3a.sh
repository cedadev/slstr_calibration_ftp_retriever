#!/bin/sh


# loop over last few months

for months_ago in {0..1}
do
   export month=`date -d "-$months_ago month" +%m`
   export year=`date -d "-$months_ago month" +%Y`

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_desert_s3a.cfg  -v -CeF -p /S3ETRAC/S3A/SLSTR/DESERT/$year-$month  >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_snow_s3a.cfg  -v -CeF -p /S3ETRAC/S3A/SLSTR/SNOW/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_rayleigh_s3a.cfg  -v -CeF -p /S3ETRAC/S3A/SLSTR/RAYLEIGH/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_slstr_glitter_s3a.cfg  -v -CeF -p /S3ETRAC/S3A/SLSTR/GLITTER/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_desert_s3a.cfg  -v -CeF -p /S3ETRAC/S3A/OLCI/DESERT/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_snow_s3a.cfg  -v -CeF -p /S3ETRAC/S3A/OLCI/SNOW/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_rayleigh_s3a.cfg  -v -CeF -p /S3ETRAC/S3A/OLCI/RAYLEIGH/$year-$month >/dev/null 2>&1

   /usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_olci_glitter_s3a.cfg  -v -CeF -p /S3ETRAC/S3A/OLCI/GLITTER/$year-$month >/dev/null 2>&1


done
