#!/bin/sh
echo "cleaning terminal syslogs"
echo "please enter your admin password"
sudo rm -rf /private/var/log/asl/*.asl
echo "done"
exit