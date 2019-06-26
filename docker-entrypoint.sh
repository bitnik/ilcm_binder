#!/bin/bash
set -e
/expectfile.sh docker
exec "$@"
	
