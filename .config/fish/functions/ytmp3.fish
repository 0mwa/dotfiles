function ytmp3 --wraps='youtube-dl --extract-audio --audio-format mp3 -o "~/Downloads/%(title)s.%(ext)s"' --wraps='sudo youtube-dl --extract-audio --audio-format mp3 -o "~/Downloads/%(title)s.%(ext)s"' --wraps='yt-dlp --extract-audio --audio-format mp3 -o "~/Downloads/%(title)s.%(ext)s"' --description 'alias ytmp3=yt-dlp --extract-audio --audio-format mp3 -o "~/Downloads/%(title)s.%(ext)s"'
  yt-dlp --extract-audio --audio-format mp3 -o "~/Downloads/%(title)s.%(ext)s" $argv
        
end
