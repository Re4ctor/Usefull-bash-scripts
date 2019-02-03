#!/usr/bin/env bash


FILE=$(ls ~/Immagini/ | rofi -theme ~/.cache/wal/colors-rofi-dark.rasi -dmenu -p "Select image:")
FLEN=${#FILE}
if [ $FLEN -gt 0 ]; then
	echo $FLEN
	echo $FILE
	wal -i ~/Immagini/$FILE -g -o reload_dunst.sh
	echo "~/Immagini/$FILE" > /tmp/current_paper
fi