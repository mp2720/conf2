#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar laptop &
polybar officemon &
polybar officemon2 &
polybar officemon3 &
wait
