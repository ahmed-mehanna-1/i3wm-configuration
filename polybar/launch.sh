#!/usr/bin/env sh
## Add this to your wm startup file.


# Terminate already running bar instances
ps -ef | grep hideIt | grep -v grep | awk '{print $2}' | xargs kill
echo "########################################################################"
# notify-send "hideIt killed"
killall -q polybar
echo "########################################################################"
notify-send "polybars killed"
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done



polybar -c "$SETUP_CONFIGURATIONS/polybar/config.ini" workspaces -r &
echo "########################################################################"
notify-send "workspaces bar launched"

polybar -c "$SETUP_CONFIGURATIONS/polybar/config.ini" main -r &
echo "########################################################################"
notify-send "main bar launched"


xdo raise -a "polybar-workspaces-1"
xdo raise -a "polybar-main_eDP-1"


sleep 3

while ! pgrep -x polybar >/dev/null; do sleep 1; done
sleep 20

xdo raise -a "polybar-workspaces_edp-1"
xdo raise -a "polybar-main_edp-1"
