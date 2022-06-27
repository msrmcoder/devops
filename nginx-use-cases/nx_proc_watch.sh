ps axw -o pid,ppid,user,%cpu,vsz,wchan,command | egrep '(nginx|PID)'
# ps -ef | grep nginx
