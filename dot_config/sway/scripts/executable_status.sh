# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# Produces "21 days", for example
#uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
#date_formatted=$(date "+%a %F %H:%M")

# Get the Linux version but remove the "-1-ARCH" part
#linux_version=$(uname -r | cut -d '-' -f1)

# Returns the battery status: "Full", "Discharging", or "Charging".
#battery_status=$(cat /sys/class/power_supply/BAT0/status)

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
#echo $uptime_formatted ↑ $linux_version 🐧 $battery_status 🔋 $date_formatted

# Global properties
#
# The top properties below are applied to every block, but can be overridden.
separator=false
markup=pango

[terminal]
full_text= 
color=#807dfe
command=tilix

[browser]
full_text= 
color=#ff7f81
command=firefox

[files]
full_text= 
color=#7f3fbf
command=nemo ~/

[mail]
full_text= 
color=#dbcb75
command=evolution

[simple-2]
full_text=: :
color=#717171

# Disk usage
#
# The directory defaults to $HOME if the instance is not specified.
# The script may be called with a optional argument to set the alert
# (defaults to 10 for 10%).
[disk]
label=   
instance=/
command=~/.config/i3/scripts/disk
interval=30

# Memory usage
#
# The type defaults to "mem" if the instance is not specified.
[memory]
label= 
command=~/.config/i3/scripts/memory
interval=2

[cpu_usage]
label= 
command=~/.config/i3/scripts/cpu_usage
#min_width=CPU: 100.00%
interval=2

[battery]
command=~/.config/i3/scripts/battery.sh
# change this to battery-pinebook-pro.sh if you are running on pinebook-pro
#label= 
#instance=1
interval=30

[simple-2]
full_text=: :
color=#717171

[pavucontrol]
full_text= 
command=pavucontrol

[volume-pulseaudio]
full_text= 
command=~/.config/i3/scripts/volume
instance=Master
interval=1

[time]
#label= 
command=date '+%a %d %b %H:%M:%S'
interval=1

[simple-2]
full_text=: :
color=#717171

# Guess the weather hourly
[weather]
command=curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo
interval=3600
color=#A4C2F4

#[shutdown_menu]
#full_text=   
#command=~/.config/i3/scripts/powermenu

[simple-2]
full_text=: :
color=#717171
