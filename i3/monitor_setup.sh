#!/bin/bash
#!/bin/bash


# Configure both displays
xrandr --output HDMI-1-0 --primary --mode 3440x1440 --pos 1920x0 --rotate normal
xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal	
