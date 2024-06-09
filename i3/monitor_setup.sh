#!/bin/bash
#!/bin/bash

# Get the connected displays
LAPTOP_DISPLAY="eDP-1"
EXTERNAL_DISPLAY="HDMI-1-0"

# Check if the external monitor is connected
if xrandr | grep "$EXTERNAL_DISPLAY connected"; then
    # Configure both displays
    xrandr --output $LAPTOP_DISPLAY --auto --primary --left-of $EXTERNAL_DISPLAY
    xrandr --output $EXTERNAL_DISPLAY --auto
else
    # Configure only the laptop display
    xrandr --output $LAPTOP_DISPLAY --auto --primary
    xrandr --output $EXTERNAL_DISPLAY --off
fi
