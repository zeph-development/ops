#!/bin/bash

now=`date +%y%m%d%H%M%S`
file="/tmp/internet_connected_alert.log"
echo "Connected to internet" >> $file

# Keep last n lines in log file
max_lines_size=${1:-5}
file_lines_size=$( wc -l < $file )

if [[ $file_lines_size -gt max_lines_size ]]; then
                tail -n $max_lines_size $file > $file.tmp
                rm $file
                mv $file.tmp $file
fi