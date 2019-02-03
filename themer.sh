#!/usr/bin/env bash
######################################
## WALLPAPER AND COLORSCHEME SETTER ##
######################################

FILE=$(cd ~/Immagini/ && ls | sxiv -tio)
FLEN=${#FILE}
if [ $FLEN -gt 0 ]; then
	echo $FLEN
	echo $FILE
	wal -i ~/Immagini/$FILE -g
	cp ~/Immagini/$FILE /home/reactor/.cache/currentwal/wal
fi