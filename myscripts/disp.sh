#!/bin/bash

set -ex

cmd=$1
if [[ $# -ne 1 ]]; then
  cmd=on
fi

DISP=DisplayPort-1

if [[ "$cmd" == "on" ]]; then
  # above, below, right-of, left-of
  xrandr --output "$DISP" --auto --left-of eDP
else
  xrandr --output "$DISP" --off
fi
