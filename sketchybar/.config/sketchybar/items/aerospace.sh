#!/bin/bash

sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-monitors | awk '{print $1}' ); do
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        label.color=$MAROON \
        icon.color=$MAROON \
        icon.font.size=10 \
        label.font.size=14 \
        background.color=0xff1e2030 \
        background.corner_radius=5 \
        background.drawing=off \
        icon.padding_right=2 \
        label.padding_left=2 \
        padding_right=10 \
        label=$(aerospace list-monitors --monitor $sid --visible) \
        icon=$sid \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

sketchybar --add item space_separator left                             \
           --set space_separator icon="􀆊"                                \
                                 icon.color=$SKY \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
                                 script="$PLUGIN_DIR/space_windows.sh" \
           --subscribe space_separator space_windows_change
