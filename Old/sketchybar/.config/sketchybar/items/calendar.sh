#!/bin/bash

calendar=(
  icon=􀧞   
  background.color=$MAUVE
  label.color=$BAR_COLOR
  icon.color=$BAR_COLOR
  script="$PLUGIN_DIR/calendar.sh"
  update_freq=30
  label.padding_right=7
  icon.padding_left=5
)


sketchybar --add item calendar right                \
           --set calendar ${calendar[@]}            \

