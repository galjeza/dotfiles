#!/bin/bash

# Define workspace names or numbers
ws1="1: 💻"
ws2="2: 🌐"
ws3="3: 📝"
ws4="4: 📧"

# Move to workspace and open applications
i3-msg "workspace $ws1; exec firefox --new-window https://slack.com"
sleep 1
i3-msg "split v; exec firefox --new-window https://linear.app"
sleep 1
i3-msg "workspace $ws2; exec spotify"
sleep 1
i3-msg "workspace $ws3; exec code"
sleep 1
i3-msg "workspace $ws3; exec alacritty"

# Set up layout for workspace 1 (Firefox split for Slack and Linear)
i3-msg "workspace $ws1; layout splith"

# Set up layout for workspace 3 (Code and terminal)
i3-msg "workspace $ws3; split v; focus down; resize shrink width 50 px"

