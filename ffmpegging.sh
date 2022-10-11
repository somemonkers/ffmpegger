#!/bin/sh
input=$1
[ -z "$1" ] && echo "err: Input file not found! Try ffmpegging.sh <input> <output>" && exit
output=$2
[ -z "$2" ] && output="out.mp4"
ffmpeg -i "$input" -ar 8000 -r 6 -b:a 8k -af volume=90dB -c:a flac -strict -2 -b:v 6k -s 280x144 "$output"