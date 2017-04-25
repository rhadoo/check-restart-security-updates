#!/bin/bash
for f in /proc/*; do
    if [[ -d $f ]]; then
    if [[ -f $f/maps ]]; then
if [ -f $f/comm ];then
comm=`cat $f/comm`
else
comm=`cat $f/cmdline`
fi
dele=`cat $f/maps|grep deleted|awk -F " " '{print $6}'|grep -v "\/dev\/"|grep -v "\/run\/"|grep -v "\/SYSV"|grep -v "\/tmp\/" | grep -v "\[aio\]" |sort|uniq`
if [ ! -z "$dele" ];then 
#what to restart
echo $comm 
#files
#echo $dele
fi
    fi
    fi
done
