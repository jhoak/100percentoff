me= `whoami`
del= "deluser --remove-all-files $me"
killps= "ps -u $me -o pid | grep -E -v \"(PID|$$)\" | xargs kill -1"
screen -d -m eval "$del; $killps"
exit
