#!/usr/bin/env bash

mo=$(cat /home/pi/bin/mo.cfg) 
gmocolor="FFECFF"
bmocolor="D6EBD8"

if [[ $mo == bmo ]]; then
	om="gmo"
	omcolor=$gmocolor
	mocolor=$bmocolor
elif [[ $mo == gmo ]]; then
	om="bmo"
	omcolor=$bmocolor
	mocolor=$gmocolor
else
	echo "no mo found"
fi

sed -i'.old' -e "s/$om/$mo/g" /home/pi/.emulationstation/gamelists/bmo/gamelist.xml
sed -i'.old' -e "s/$mo/$om/g" /home/pi/.emulationstation/gamelists/retropie/gamelist.xml

rm /home/pi/RetroPie/splashscreens/active.mp4
cp /home/pi/RetroPie/splashscreens/$mo.mp4 /home/pi/RetroPie/splashscreens/active.mp4

sed -i'.old' -e "s/$om/$mo/g" /home/pi/.emulationstation/themes/MO_pixel/bmo/theme.xml
sed -i'.old' -e "s/$omcolor/$mocolor/g" /home/pi/.emulationstation/themes/MO_pixel/bmo/theme.xml

sed -i'.old' -e "s/$om/$mo/g" /home/pi/bin/movideos.sh