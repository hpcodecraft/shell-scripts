#!/bin/sh
USEDPERC=`df -h|grep \ /$|tr -s ' ' ':'|cut -d ':' -f 5|tr -d '%'`
echo $(( 100 - $USEDPERC ))'%'
