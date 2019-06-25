#!/usr/bin/expect
set pssword [lrange $argv 0 0]
spawn su docker -c "echo docker | sudo -S  /usr/bin/mysqld_safe --basedir=/usr"
expect "Password:" { send "$pssword\r" }
interact
exit
