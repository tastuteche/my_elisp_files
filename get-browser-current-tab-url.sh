#!/usr/bin/env bash
cur_win_id=$(xdotool getactivewindow)
browser_win_id=$(xdotool search --class google-chrome | tail -1;)
if [ $? -eq 0 ]; then
    :
else
    echo "error" "Can't detect Chrome Window -- is it running?"
    exit 1
fi
xdotool windowactivate --sync "$browser_win_id" key ctrl+l ctrl+c
sleep 1
title=$(xdotool getwindowname "$browser_win_id")

xdotool windowactivate "$cur_win_id"

if hash xsel 2>/dev/null; then
    url=$(xsel --clipboard)
elif hash xsel 2>/dev/null; then
    url=$(xclip -selection clipboard -o)
else
    echo "error" "Can't get clipboard because xsel or xclip is not installed"
    exit 1
fi
echo ";; title:$title"
echo ";; url:$url"
exit 0

