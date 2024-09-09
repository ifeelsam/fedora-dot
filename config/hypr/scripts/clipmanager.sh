#!/bin/bash

exec 2>>/tmp/clipboard_debug.log
set -x

while true; do
  result=$(
    /usr/bin/rofi -dmenu -display-columns 2 \
      -kb-custom-1 "Control-Delete" \
      -kb-custom-2 "Alt-Delete" \
      -config ~/.config/rofi/launchers/type-1/style-5.rasi < <(/usr/bin/cliphist list)
  )

  case "$?" in
  1)
    exit
    ;;
  0)
    case "$result" in
    "")
      continue
      ;;
    *)
      /usr/bin/cliphist decode <<<"$result" | /usr/bin/wl-copy
      exit
      ;;
    esac
    ;;
  10)
    /usr/bin/cliphist delete <<<"$result"
    ;;
  11)
    /usr/bin/cliphist wipe
    ;;
  esac
done
