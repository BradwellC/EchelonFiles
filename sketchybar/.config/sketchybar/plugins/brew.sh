#!/bin/bash

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

COUNT=$(brew outdated | wc -l | tr -d ' ')

COLOR=$RED

case "$COUNT" in
  [3-5][0-9]) COLOR=$SKY
  ;;
  [1-2][0-9]) COLOR=$RED
  ;;
  [1-9]) COLOR=$ROSEWATER
  ;;
  0) COLOR=$TEXT
     COUNT=􀆅
  ;;
esac

sketchybar --set $NAME label=$COUNT icon.color=$COLOR
