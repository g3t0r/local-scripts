interfaces=$(ip link | grep "state UP" | awk -e '{print $2}' | sed -e "s/://")
wifi_sig="$(nmcli --colors no -f IN-USE,SIGNAL device wifi list --rescan no | grep '*' | awk '{print $2}')";
echo "$interfaces $wifi_sig"

