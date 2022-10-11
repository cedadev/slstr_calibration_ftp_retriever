#!/bin/sh

/usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_s3etrac_s3b.cfg  -v -CeF  >/dev/null 2>&1
