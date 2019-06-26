#!/usr/bin/expect
set pssword [lrange $argv 0 0]
spawn su ilcm_super -c "sh /start_services.sh"
expect "Password:" { send "$pssword\r" }
sleep 1
interact

