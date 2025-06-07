#!/bin/bash

calendar=(
  icon=􀧞
  background.color=$PINK
  icon.padding_right=0
  update_freq=30
  script="$PLUGIN_DIR/calendar.sh"
  padding_left=10
)

sketchybar --add item calendar right \
           --set calendar "${calendar[@]}" \
            --subscribe calendar system_woke
