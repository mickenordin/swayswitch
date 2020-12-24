# swayswitch
A simple windowswitcher written in python using wxPython

## Dependencies
For Debian/Ubuntu: python3-wxgtk4.0
For Fedora/RHEL: python3-wxpython4

## Installation
```
wget -O ~/.local/bin/swayswitch https://github.com/mickenordin/swayswitch/blob/main/swayswitch
chmod +x ~/.local/bin/swayswitch
```
## Usage
Add a keybinding to ~/.config/sway/config:

```
bindsym $mod+Tab exec ~/.local/bin/swayswitch
```
Reload config and open up window switcher with $mod+tab. 
