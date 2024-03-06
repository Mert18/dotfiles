## Things to do in a new distro


1. Keyboard shortcuts
```console
Alt + w -> Launch Web Browser
Alt + f -> Launch Folders 
Alt + s -> Launch Settings
Super + T -> Launch Terminal
Ctrl + 4 -> Close Window
Ctrl + Super + Left -> Move to workspace on the left
Ctrl + Super + Right -> Move to workspace on the right
Ctrl + Alt + Left -> Move window to workspace on the left
Ctrl + Alt + Right -> Move window to workspace on the right
```

// GNOME
2. Disable Ubuntu Dock 
```bash
gnome-extensions disable ubuntu-dock@ubuntu.com
```

3. Spotify Change Song
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
yay curl
```

5.5 Install Git
```
sudo apt install git

git config --global user.name "username"
git config --global user.email gmail@gmail.com
```

6. ZSH & Theme
```
sudo apt-get install zsh
yay zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```
ZSH THEME -> https://github.com/ChesterYue/ohmyzsh-theme-passion
Download it at put it under ` ~/.oh-my-zsh/themes `

7. Install node
```
curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

yay nodejs npm
```

8. Install Postman
```
tar -C /tmp/ -xzf <(curl -L https://dl.pstmn.io/download/latest/linux64) && sudo mv /tmp/Postman /opt/

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
yay spotify-launcher
```

10. Install Discord

11. Generate new SSH keys and add them to github & bitbucket
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

12. Install Kitty 
```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir .local/bin
```

13. Install tmux
```
sudo apt-get install tmux
yay tmux
```

14. Gnome, alt tab only show apps in the current workspace
```
gsettings set org.gnome.shell.app-switcher current-workspace-only true
```
