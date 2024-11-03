prefix="BAT: "; 
perc=$(cat /sys/class/power_supply/BAT0/capacity)
ac_connected=$(cat /sys/class/power_supply/AC/online)

ac_icon=$([ "$ac_connected" == 1 ] && echo "🔌" || echo "");
low_power_icon=$([ "$perc" -lt 20 ] && echo "🪫" || echo "");

full="$prefix $perc%$ac_icon$low_power_icon";
echo $full;

