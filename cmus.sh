#!/bin/bash

#prepend_zero () {
#    seq -f "%02g" $1 $1
#}

artist=$(cmus-remote -C status | grep -w "artist" | cut -d " " -f3)
title=$(cmus-remote -C status | grep -w "title" | cut -d " " -f3-10)
echo "$artist - $title"
