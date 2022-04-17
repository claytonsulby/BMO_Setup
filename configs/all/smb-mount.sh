#!/bin/bash

username="clay"
password="Cl@yt0n98\!"
hostname="192.168.1.53"

echo "Mounting: ${username}@${hostname}"
sudo mount -t cifs -o username=${username},password=${password},nounix,noserverino //${hostname}/Games/roms /home/pi/RetroPie/roms
sudo mount -t cifs -o username=${username},password=${password},nounix,noserverino //${hostname}/Games/saves /home/pi/RetroPie/saves