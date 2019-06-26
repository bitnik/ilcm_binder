#!/bin/bash
set -e
ps -A > davor.txt
/home/christian/expectfile.sh docker > mittendrin.txt
ps -A > danach.txt

exec "$@"
	
