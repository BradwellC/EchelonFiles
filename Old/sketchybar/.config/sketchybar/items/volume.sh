#!/bin/bash

sketchybar --add item volume right \
           --set volume background.color=$PINK 
                        label.color=$BAR_COLOR \
                        icon.color=$BAR_COLOR\
                        label.padding_right=7 \
                        icon.padding_left=5 \
                        script="$PLUGIN_DIR/volume.sh" \
           --subscribe volume volume_change \
