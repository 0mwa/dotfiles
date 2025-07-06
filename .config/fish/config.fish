if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx BROWSER /usr/bin/vivaldi
set -gx EDITOR code

  
set -g tide_right_prompt_items git
set -g tide_pwd_bg_color blue
set -g tide_os_bg_color white
set -g tide_os_color black
set -g tide_left_prompt_items os aws pwd 
set -g tide_right_prompt_frame_enabled false
set -g tide_cmd_duration_bg_color green  


set -x SUDO_ASKPASS /home/omw/.config/rofi/scripts/rofi_askpass.sh

# fish_add_path /home/omw/.spicetify
# fastfetch --config hypr

# Created by `pipx` on 2024-06-25 11:20:09
set PATH $PATH /home/omw/.local/bin

# Tide git items

set -g tide_git_bg_color white
set -g tide_git_bg_color_unstable yellow
set -g tide_git_bg_color_branch red
set -g tide_git_color_branch black

