#!/usr/bin/env bash

if [[ $(grep Kiosk ~/.emulationstation/es_settings.cfg) != "" ]]; then
    mode="Kiosk"
    newmode="Full"
elif [[ $(grep Full ~/.emulationstation/es_settings.cfg) != "" ]]; then
    mode="Full"
    newmode="Kiosk"
else echo "there was an error toggling the mode"
fi

sed -i'.old' -e "s/$mode/$newmode/g" ~/.emulationstation/es_settings.cfg

sudo reboot