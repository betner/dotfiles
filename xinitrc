#!bin/sh

# for vim
setxkbmap -option caps:escape

# dwm menubar date
while true
do
	xsetroot -name "$(date +"%a %b %d %R")"
	sleep 1s
done &
exec dwm
