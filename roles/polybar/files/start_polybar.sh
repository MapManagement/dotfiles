#!/usr/bin/zsh

polybar-msg cmd quit

polybar main_monitor 2>&1 | tee -a /tmp/polybar.log & disown
polybar second_monitor 2>&1 | tee -a /tmp/polybar.log & disown
