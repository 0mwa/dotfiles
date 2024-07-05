
#  =====================================
#   
#   ▄▀▄ █ █ ▀█▀ ▄▀▄ █▀ ▀█▀ ▄▀▄ █▀▄ ▀█▀
#   █▀█ ▀▄█  █  ▀▄▀ ▄█  █  █▀█ █▀▄  █ 
#  
#  =====================================                                                                                                                                  

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP & # for XDPH
dbus-update-activation-environment --systemd --all &                               # for XDPH
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &          # for XDPH

#  =====================================
#              Apps startup
#  =====================================

#  wallpaper
swww-daemon &
#  swww img ~/Pictures/wallpaper.png -t none

#  waybar
~/.config/waybar/start

#  notification daemon
~/.config/swaync/start

#  applets
nm-applet &
blueman-applet &

#  screenshot
eval "sleep 0.5; killall flameshot; pkill flameshot" &
eval "sleep 1; killall flameshot; pkill flameshot" &
eval "sleep 2; killall flameshot; pkill flameshot" &

#  load brightness
~/.config/hypr/scripts/load_brightness.sh &

run_hook post &
