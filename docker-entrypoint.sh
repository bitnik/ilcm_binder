#!/bin/bash
set -e
ps -A > /home/christian/davor.txt
/home/christian/expectfile.sh docker 
ps -A > /home/christian/danach.txt

exec "$@"
	
