#!/bin/bash
ffmpeg -i $1 -c:v libx264 -c:a aac -crf 23 -vf format=yuv420p -b:v 3500k -b:a 128k -framerate 30 $2
