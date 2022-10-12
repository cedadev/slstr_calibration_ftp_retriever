#!/bin/sh

#$GWS_PATH/software/slstr_calibration_ftp_retriever/make_mpc_level0_config.sh S3A

/usr/bin/python2.7 $GWS_PATH/software/slstr_calibration_ftp_retriever/data_retriever.py -c $GWS_PATH/software/slstr_calibration_ftp_retriever/config/slstr_cpa_level0_S3A.cfg -v  -Ce >/dev/null 2>&1
