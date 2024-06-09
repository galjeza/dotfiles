#!/bin/bash

CONFIG_FILE="$HOME/.config/i3/config"

echo "📂 i3 Keybindings 📂"
echo ""
grep -E 'bindsym|bindcode' $CONFIG_FILE | while read -r line ; do
    keybinding=$(echo $line | sed -E 's/bindsym|bindcode//;s/exec.*//;s/--no-startup-id//;s/\s+/ /g')
    action=$(echo $line | sed -E 's/.*exec.*( |$)//;s/"/ /g')
    echo "Keybinding: $keybinding"
    echo "Action: $action"
    echo ""
done | less
