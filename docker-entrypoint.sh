#!/bin/bash
set -e
touch /home/christian/davor.txt
/home/christian/expectfile.sh docker
touch /home/christian/danach.txt

exec "$@"
	
