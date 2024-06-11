## Things to do in a new distro


- Keyboard shortcuts
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

- Spotify Change Song

<b>UBUNTU</b>

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

<b>ENDEAVOUROS</b>
```bash
sudo pacman -S playerctl
```
```
playerctl --player=spotify previous
playerctl --player=spotify play-pause
playerctl --player=spotify next
```



- I like those fonts. I use Firacode in alacritty.
Font - FiraCode, JetBrains
https://www.nerdfonts.com/font-downloads
https://github.com/githubnext/monaspace

- Install curl
```
sudo apt-get install curl
yay curl
```

- Install Git
```
sudo apt install git

git config --global user.name "username"
git config --global user.email gmail@gmail.com
```

- ZSH & Theme
```
sudo apt-get install zsh
yay zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```
ZSH THEME -> https://github.com/ChesterYue/ohmyzsh-theme-passion
Download it at put it under ` ~/.oh-my-zsh/themes `

- Install node
```
curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

yay nodejs npm
```

- Install Postman
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

- Install Spotify
```
sudo snap install spotify
yay spotify-launcher
```

- Install Discord

- Generate new SSH keys and add them to github & bitbucket
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

- Install Kitty

<b>UBUNTU</b>

```
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir .local/bin
```
Create a desktop icon:
```
# Create symbolic links to add kitty and kitten to PATH (assuming ~/.local/bin is in
# your system-wide PATH)
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
# Place the kitty.desktop file somewhere it can be found by the OS
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
# Update the paths to the kitty and its icon in the kitty.desktop file(s)
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
```

<b>ENDEAVOUROS</b>

```
yay kitty
```

- Install tmux
```
sudo apt-get install tmux
yay tmux
```

- Ubuntu, alt tab only show apps in the current workspace
```
gsettings set org.gnome.shell.app-switcher current-workspace-only true
```
