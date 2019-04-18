#!/bin/sh
#detect TVDoctor.bin
# run per 1 days

ps aux |grep TVDoctor.bin |grep -v grep | awk '{print $2}' |xargs kill -9