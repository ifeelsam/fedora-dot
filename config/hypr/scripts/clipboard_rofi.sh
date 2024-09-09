#!/bin/bash

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin
selected=$(cliphist list | rofi -dmenu -config ~/.config/rofi/launchers/type-1/style-5.rasi)

echo "Selected: $selected" >>/tmp/clipboard_debug.log

if [ -n "$selected" ]; then
  cliphist decode <<<"$selected" | wl-copy
  echo "Copied to clipboard" >>/tmp/clipboard_debug.log
else
  echo "Nothing selected" >>/tmp/clipboard_debug.log
fi
