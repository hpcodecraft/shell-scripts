#!/bin/sh

PID=`ps aux|grep -m 1 NoisyTyper.app|cut -d ' ' -f 5`
echo "killing pid #"$PID
kill $PID
echo "restarting NoisyTyper"
open /Applications/NoisyTyper.app
