interfaces=$(ip link | grep "state UP" | awk -e '{print $2}' | sed -e "s/://")
echo $interfaces
