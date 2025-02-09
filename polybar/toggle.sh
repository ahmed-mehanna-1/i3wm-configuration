bar_pid=$(pgrep -f "polybar.*$1 -r")

polybar-msg -p "$bar_pid" cmd toggle
