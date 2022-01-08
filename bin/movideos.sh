#!/usr/bin/env bash

declare "file"=$( find ~/RetroPie/videos/bmo/ -type f | shuf -n 1)
omxplayer -o alsa ${file} > /dev/null 2>&1
