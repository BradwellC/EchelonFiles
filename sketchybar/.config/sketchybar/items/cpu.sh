#!/bin/bash

cpu=(
  update_freq=2
  icon=􀧓 
  script="$PLUGIN_DIR/cpu.sh"
  background.color=$SKY
  icon.color=$TEXT
  label.color=$TEXT
)

sketchybar --add item cpu right \
           --set cpu "${cpu[@]}" 
