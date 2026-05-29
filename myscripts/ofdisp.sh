#!/bin/bash

set -e
set -x

cmd=$1
if [[ $# -ne 1 ]]; then
  cmd=on
fi

echo $cmd

if [[ "$cmd" == "on" ]]; then
  xrandr --output HDMI-1 --auto --above eDP-1
  xrandr --output DP-2 --auto --above eDP-1
  xrandr --output DP-1 --auto --above eDP-1
  ~/.config/polybar/launch.sh
else
  xrandr --output HDMI-1 --off
  xrandr --output DP-2 --off
  xrandr --output DP-1 --auto --above eDP-1
  ~/.config/polybar/launch.sh
fi
 
