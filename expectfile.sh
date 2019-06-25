#!/usr/bin/expect
set pssword [lrange $argv 0 0]
spawn su docker -c "echo docker | sudo -S service mysql start & sleep 2s"
expect "Password:" { send "$pssword\r" }
interact
exit
