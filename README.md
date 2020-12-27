# swayswitch
A simple windowswitcher written in python using wxPython

## Dependencies
For Debian/Ubuntu: ```python3-wxgtk4.0```

For Fedora/RHEL: ```python3-wxpython4```

## Installation
```
wget -O ~/.local/bin/swayswitch https://github.com/mickenordin/swayswitch/blob/main/swayswitch
chmod +x ~/.local/bin/swayswitch
```
## Usage
Add sway config to ~/.config/sway/config:

```
mode "switcher" {                   
    # Remove normal bidnings and set a dummy variable so we do something 
    set $hello "hello"
}

bindsym $mod+Tab exec ~/.local/bin/swayswitch, mode "switcher"
```
Reload config and open up window switcher with $mod+tab. 

## Thanks
Thanks to tobiaspc for the startingpoint for this code: <https://github.com/tobiaspc/wofi-scripts>
