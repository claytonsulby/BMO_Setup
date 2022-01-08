#!/usr/bin/env bash

cd /home/pi/RetroPie/

find ~/RetroPie/roms/ -name '*.srm' | cpio -pdm ~/Saves_Backup/
find ~/RetroPie/roms/ -name '*.state' | cpio -pdm ~/Saves_Backup/
