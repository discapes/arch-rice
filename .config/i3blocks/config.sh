source ~/.cache/wal/colors.sh
echo "
separator_block_width=14

[ipv4]
label= 
command= hostname -i
#command= echo \"\$(ip addr | grep enp1s0 | grep inet | awk '{print \$2}')\"
interval=5
color=$color8

[battery]
label= 
command=cat /sys/class/power_supply/BAT1/capacity
interval=30
color=$color1

[disk-root]
label= 
command=/usr/lib64/i3blocks/disk/disk /
interval=30
color=$color2

[load]
label=  
command=/usr/lib64/i3blocks/load_average/load_average
interval=5
color=$color3

[temp]
label= 
command=echo \"\$(sensors | grep \"Core 0\" | awk '{print \$3}')\"
interval=10
color=$color4

[volume]
label= 
command=/usr/lib64/i3blocks/volume/volume
instance=Master
interval=once
signal=10
color=$color5

[time]
label= 
command=date '+%a %d-%m-%y %l:%M:%S %p'
interval=1
color=$color6
" > ~/.config/i3blocks/config
