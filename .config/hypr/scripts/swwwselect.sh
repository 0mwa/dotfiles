
#  set variables
wall_dir="${HOME}/Pictures/wallpapers/"
cache_dir="${HOME}/.cache/swww_preview/"
rofi_command="rofi -dmenu -theme ${HOME}/.config/rofi/wp.rasi" 

#  create cache dir if not exists
if [ ! -d "${cache_dir}" ] ; then
        mkdir -p "${cache_dir}"
    fi

#  convert images in directory and save to cache dir
for imagen in "$wall_dir"/*.{jpg,jpeg,png,webp,gif}; do
	if [ -f "$imagen" ]; then
		img=$(basename "$imagen")
			if [ ! -f "${cache_dir}/${img}" ] ; then
	            ffmpeg -i "$imagen" -vf "thumbnail,scale=500:500:force_original_aspect_ratio=disable,pad=500:500:(ow-iw)/2:(oh-ih)/2" -frames:v 1 "${cache_dir}/${img}"
			fi
    fi
done

#  select a picture with rofi
wall_selection=$(find "${wall_dir}"  -maxdepth 1  -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" -o -iname "*.gif" \) -exec basename {} \; | sort | while read -r A ; do  echo -en "$A\x00icon\x1f""${cache_dir}"/"$A\n" ; done | $rofi_command)

#  set the wallpaper
[[ -n "$wall_selection" ]] || exit 1
swww img ${wall_dir}/${wall_selection} --transition-step 3 --transition-fps 165 --transition-type random

exit 0
