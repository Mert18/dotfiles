## Things to do in a new distro


1. Keyboard shortcuts
```console
Alt + w -> Launch Web Browser
Alt + f -> Launch Folders 
Alt + s -> Launch Settings
Super + T -> Launch Terminal
Ctrl + 4 -> Close Window
Ctrl + Alt + Delete -> Task Manager (gnome-system-monitor)
Ctrl + Super + Left -> Carry window to left workspace etc.
```

Spotify Previous song command
```bash
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
```

Spotify Next song command
```bash
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
```
