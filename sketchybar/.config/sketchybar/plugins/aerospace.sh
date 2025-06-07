#!/bin/bash

if [ "$1" = $(aerospace list-monitors --focused | awk '{print $1}') ]; then
    sketchybar --set $NAME  background.drawing=on 
    sketchybar --set $NAME  label=$FOCUSED_WORKSPACE 
else
    sketchybar --set $NAME background.drawing=off 
fi

