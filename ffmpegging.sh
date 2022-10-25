#!/bin/sh
[ ! "$1" ] && echo "err: Input file not found! Try ffmpegging.sh <input> <output>" && exit
ffmpeg -i "$1" -ar 8000 -r 6 -b:a 8k -af volume=90dB -c:a flac -strict -2 -b:v 6k -s 280x144 "${2:-out.mp4}"
