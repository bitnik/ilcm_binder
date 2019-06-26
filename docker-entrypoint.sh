#!/bin/bash
set -e
/expectfile.sh ilcm
exec "$@"
	
