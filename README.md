## Things to do in a new distro


1. Keyboard shortcuts
```console
Alt + w -> Launch Web Browser
Alt + f -> Launch Folders 
Alt + s -> Launch Settings
Super + T -> Launch Terminal
Ctrl + 4 -> Close Window
Ctrl + Alt + Delete -> Task Manager (gnome-system-monitor)
Ctrl + Super + Left -> Move window one monitor left
Ctrl + Super + Right -> Move window one monitor right
Ctrl + Alt + Left -> Move to workspace on the left
Ctrl + Alt + Right -> Move to workspace on the right
Shift + Super + Left -> Move window to workspace on the left
Shift + Super + Right -> Move window to workspace on the right
```

Disable Ubuntu dock
```bash
gnome-extensions disable ubuntu-dock@ubuntu.com
```

Spotify Previous song command
```bash
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
```

Spotify Next song command
```bash
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
```
Font - FiraCode, JetBrains
https://www.nerdfonts.com/font-downloads

ZSH THEME -> https://github.com/ChesterYue/ohmyzsh-theme-passion
Download it at put it under ` ~/.oh-my-zsh/themes `