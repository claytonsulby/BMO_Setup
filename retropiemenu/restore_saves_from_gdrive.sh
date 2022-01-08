#!/usr/bin/env bash

cd /home/pi/Saves_Backup/

grive -f -s home

. /home/pi/bin/restore_saves.sh

