#!/bin/bash
ffmpeg -i $1 -pix_fmt yuv420p -c:v libx264 -r 25 -crf 18 -b:v 3500k -c:a aac -b:a 128k -ac 2 -ar 44100 $2

#ffmpeg -i $1 -vf scale=-2:720 -c:v libx264 -profile:v main -level:v 3.0 -x264-params scenecut=0:open_gop=0:min-keyint=72:keyint=72 -c:a aac -preset slow -crf 23 -r 30 -sn -f mp4 $2
