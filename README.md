# swayswitch
A simple windowswitcher written in python using wxPython

## Dependencies
For Debian/Ubuntu: ```python3-wxgtk4.0```

For Fedora/RHEL: ```python3-wxpython4```

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
Reload config and open up window switcher with $mod+tab. Move around the switcher using arrow-keys or Tab.
Esc aborts and enter switches window. It is also possible to select window with the mouse. Configuration is installed to /etc/sway/config.d/swayswitch.conf

## Thanks
Thanks to tobiaspc for the startingpoint for this code: <https://github.com/tobiaspc/wofi-scripts>
