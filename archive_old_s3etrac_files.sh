# 24-Sept-2020
# Script to archive the old OLCI_B files from May 2018 to Oct 2019
# These will then be replaced with the reprocessed versions.
# 21-Jan-2021
# Update for SLSTR_B oldfiles.

export basedir='/group_workspaces/cems2/slstr_cpa/cal_site_data_extractions/SLSTR_B/DESERT/'
export newbase='/group_workspaces/cems2/slstr_cpa/cal_site_data_extractions/SLSTR_B_OLD/DESERT/'

mkdir $newbase

for dir in $basedir/*/     # list directories in the form "/tmp/dirname/"
do
    dir=${dir%*/}      # remove the trailing "/"
    dir=${dir##*/} 
    echo $dir    # print everything after the final "/"

    mkdir $newbase/$dir

    mv $basedir/$dir/*_20180[5-9]*_*_*.* $newbase/$dir/.
    mv $basedir/$dir/*_20181[0-2]*_*_*.* $newbase/$dir/.
    mv $basedir/$dir/*_20190[1-9]*_*_*.* $newbase/$dir/.
    mv $basedir/$dir/*_20191[0-2]*_*_*.* $newbase/$dir/.
    mv $basedir/$dir/*_202001*_*_*.* $newbase/$dir/.
    #mv $basedir/$dir/*_2019102[0-9]*_*_*.* $newbase/$dir/.

done
