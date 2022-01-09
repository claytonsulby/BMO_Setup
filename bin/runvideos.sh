#!/usr/bin/env bash

omxplayer -o alsa $(find ~/RetroPie/videos/bmo | shuf -n 1) > /dev/null 2>&1
