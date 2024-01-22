answer=$(printf "No\nYes" | dmenu -i -p "Quit?" -fn FiraCode -sb "#FF0000");
$([ "$answer" == "Yes" ] && killall dwm )
