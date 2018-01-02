start /b plink -ssh 192.168.56.3 -l victor -i %HOMEPATH%/varch.ppk "nohup sh -c 'DISPLAY=192.168.56.4:0.0 terminator' &>/dev/null &"
