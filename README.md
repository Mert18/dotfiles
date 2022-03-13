## Things to do in a new distro

1. Download latest updates
```console
sudo apt-get update && sudo apt-get upgrade -y
```

2. Install Gnome Tweak Tool
```console
sudo apt-get install gnome-tweak-tool -y
```

3. Install [Brave](https://brave.com) web browser

4. Install Restricted Extras and Software Properties Common
```console
sudo apt-get install ubuntu-restricted-extras
sudo apt-get install software-properties-common
```

5. Install Gnome Extensions you like
```console
https://extensions.gnome.org/
```

6. Insall snap package manager
```console
sudo apt update
sudo apt install snapd
```


7. Install Spotify
```console
snap install spotify
```

8. Install TLP for battery life
```console
sudo apt-get install tlp tlp-rdw
sudo systemctl enable tlp
```

9. To keep system clean, use these sometimes
```console
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get clean
```

10. Install VLC
```console
sudo snap install vlc
```

11. Install GIMP for photo editing
```console
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp
```

12. Setup keyboard shortcuts
```console
Alt + w -> Launch Web Browser
Super + T -> Launch Terminal
Alt + s -> Launch Settings
Alt + f -> Launch Home Folder
Ctrl + 4 -> Close Window
Ctrl + Alt + Delete -> Task Manager
```

13. Install Java
```console
sudo apt install default-jre
sudo apt install default-jdk
```

14. Install Neovim
```console
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

15. Configure Neovim
```console
move the nvim dot file to ~/.config/nvim
do not forget to :PlugInstall
```

16. Install Python
```console
sudo apt update
sudo apt install python
python --version
```

17. Install Curl
```console
sudo apt install curl
curl --version
```
18. Install Kitty Terminal
```console
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop
```

19. Configure Kitty Terminal
```console
Copy the kitty dot file and move it to ~/.config/kitty
```

20. Install [Ant Theme](https://www.gnome-look.org/p/1099856) for good
```console
Download the dracula zip file and extract it to folder /usr/share/themes
Go to gnome-tweak-tool settings and change the theme
```

21. Install [Numix Circle](https://github.com/numixproject/numix-icon-theme-circle) Icon Pack
```console
Use the appropriate command to download
Go to gnome-tweak-tool settings and change the icon theme
```
22. Install [Zsh terminal framework](https://ohmyz.sh/)
```console
Install your .zshrc dotfile , it is in ~/.zshrc
```

23. Install [Oh-my-posh](https://ohmyposh.dev/docs/linux) a prompt theme engine
```console
Select change zsh-prompt command. Previous zsh dotfile includes the theme from this installation.
```

24. Install Nodejs with npm
```console
sudo apt install nodejs
sudo apt install npm
node -v
npm -v
```

25. Install git
```console
sudo apt install git-all
git --version
```

26. Set [Github SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

27. Install [PostgreSQL](https://www.postgresql.org/download/)

28. Install [PGAdmin](https://www.pgadmin.org/download/pgadmin-4-apt/)

29. Install [Discord](https://discord.com/)

30. Install [Postman](https://www.postman.com/)

31. Install [MongoDB](https://www.mongodb.com/try/download/community)

32. Install VSCode (someone else may want to code on your computer :))
```console
https://code.visualstudio.com/download
