#!/usr/bin/env bash

mo=$(cat /home/pi/bin/mo.cfg)

if [[ $mo == bmo ]]; then
	nm="gmo"
elif [[ $mo == gmo ]]; then
	nm="bmo"
else echo "no mo found"
fi

sed -i'.old' -e "s/$mo/$nm/g" /home/pi/bin/mo.cfg 