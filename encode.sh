#!/bin/bash
ffmpeg -i $1 -pix_fmt yuv420p -c:v libx264 -b:v 3500k -c:a aac -movflags +faststart $2

