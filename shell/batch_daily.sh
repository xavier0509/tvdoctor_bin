#!/bin/sh
#batch daily shell
# run per one days

#delete the catch photo
cd /usr/share/nginx/html
rm -rf catch_*.jpg
rm -rf common_*
rm -rf logcat_*.log

cd ~
sh tvdoctor/shell/restart.sh

rm -rf /usr/share/nginx/html/upload/*

cd ~
sh tvdoctor/shell/delete_apimsg_database.sh