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
2. Disabling the most unnecessary thing in the universe
Disable Ubuntu dock
```bash
gnome-extensions disable ubuntu-dock@ubuntu.com
```

3. I can move in spotify without opening it, i must do. Assign those commands to shortcuts
Spotify Previous song command (ctrl + 4)
```bash
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous
```
Spotify Start/Stop song command (ctrl + 5)
```bash
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
```
Spotify Next song command (ctrl + 6)
```bash
dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
```
4. I like those fonts. I use Firacode in alacritty.
Font - FiraCode, JetBrains
https://www.nerdfonts.com/font-downloads

5. Install curl
```
sudo apt-get install curl
```

6. ZSH & Theme
```
sudo apt-get install zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```
ZSH THEME -> https://github.com/ChesterYue/ohmyzsh-theme-passion
Download it at put it under ` ~/.oh-my-zsh/themes `

7. Install node
```
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - && sudo apt-get install -y nodejs
```

8. Install Postman
```
tar -C /tmp/ -xzf <(curl -L https://dl.pstmn.io/download/latest/linux64) && sudo mv /tmp/Postman /opt/
```
```
sudo tee -a /usr/share/applications/postman.desktop << END
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=/opt/Postman/Postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
END
```

9. Install Spotify
```
sudo snap install spotify
```

10. Install Discord
https://discord.com/download

11. Generate new SSH keys and add them to github & bitbucket
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

12. Install alacritty https://github.com/alacritty/alacritty/blob/master/INSTALL.md
and make it default terminal
```
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/local/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
```

13. Install tmux
```
sudo apt-get install tmux
```
