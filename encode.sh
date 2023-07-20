#!/bin/bash
ffmpeg -i $1 -pix_fmt yuv420p -c:v libx264 -r 25 -crf 18 -b:v 3500k -c:a aac -b:a 128k -ac 2 -ar 44100 $2
