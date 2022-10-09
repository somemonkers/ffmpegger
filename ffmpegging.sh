#!/bin/sh
ffmpeg -i "$@" -ar 8000 -r 6 -b:a 8k -af volume=90dB -c:a flac -strict -2 -b:v 6k -s 280x144 out.mp4
