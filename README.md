# swayswitch
A simple window switcher for the Sway Wayland compositor written in python using wxPython.

## Installation

### Debian
```
curl https://repo.mic.ke/PUBLIC.KEY | sudo apt-key add -
curl https://repo.mic.ke/debian/debian-micke-unstable.list | sudo tee /etc/apt/sources.list.d/debian-micke-unstable.list
sudo apt update && sudo apt install swayswitch
```

### RPM
```
wget https://repo.mic.ke/PUBLIC.KEY
sudo rpm --import PUBLIC.KEY
sudo dnf config-manager --add-repo https://repo.mic.ke/rpm/rpm-micke.repo
sudo dnf install swayswitch
```

## Usage
Reload config and open up window switcher with Mod4+tab. Move around the switcher using arrow-keys or Tab.
Esc aborts and enter switches window. It is also possible to select window with the mouse.

Two keybindings work by default, Mod4+f to toggle fullscreen mode, that is if you manage to bring up the switcher while in fullscreen mode you can display the 
switcher window by exiting fullscreen mode. You can also exit switcher mode by pressing Mod4+q, this is usefull if you manage to get another window on top of
the switcher window somehow.

### Config files
SwaySwitch uses two configuration files, one is supplied with the package and is installed to /etc/sway/config.d/swayswitch.conf. It contains default keybindings for Sway.
The other on is optionally supplied by the user as $HOME/.local/swayswitch/config in toml format.

Possible options are:
```
label_len = 20
icon_size = 128
```
The example above is the default options. ```label_len``` is the total length of the text label above buttons and ```icon_size``` is the size of the icons in pixels. 

## Thanks
Thanks to tobiaspc for the startingpoint for this code: <https://github.com/tobiaspc/wofi-scripts>

## Screenshot
![Open window switcher](https://github.com/mickenordin/swayswitch/blob/main/screenshots/scrot1.png)
