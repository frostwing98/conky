#!/bin/bash
ps -aux|grep "launchConky"|awk '{print $2}'|xargs kill
ps -aux|grep "xeventbind"|awk '{print $2}'|xargs kill
nohup ~/.config/conky/launchConky.sh > ~/.config.conky.nohup.out 2>&1 &
#bash nohup ~/.config/conky/launchConky.sh > ~/.config/conky/nohup.out 2>&1 &

#kill $( ps -aux | grep "launchConky" | awk '{print $2}' )
#kill $( ps -aux | grep "xeventbind" | awk '{print $2}' )

