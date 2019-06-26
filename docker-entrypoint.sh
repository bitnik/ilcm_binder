#!/bin/bash
set -e
set timeout -1;
/expectfile.sh ilcm
exec "$@"
	
