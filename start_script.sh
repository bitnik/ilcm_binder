#!/bin/bash
ps -A > /home/christian/davor.txt
/home/christian/expectfile.sh docker > /home/christian/mittendrin.txt
ps -A > /home/christian/danach.txt
