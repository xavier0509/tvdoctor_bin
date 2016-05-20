#!/bin/sh
#detect TVDoctor.bin
# run per 1 mins 

v1=`ps aux |grep TVDoctor.bin |wc |awk '{print $1}'`
if [ $v1 -eq 1 ]; then
echo "TVDoctor reboot " >> /var/log/tvdoctor.log
cd /root/tvdoctor
./TVDoctor.bin &
fi

