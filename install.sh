#!/bin/bash

if [[ "$EUID" -ne 0 ]] ; then
  echo "Please run as root (sudo)"
  exit 1
fi

if [[ $1 -ne "" ]] ; then
  BRANCH=$1
else
  BRANCH="master"
fi

# Update git
echo "Updating from git.."
git reset --hard HEAD
git pull
git checkout $BRANCH

# Set permissions on the initial required
chmod +x install.sh

#Update Mo game
#echo "Updating child repos from git"

# Move pulled files to correct locations
echo "Moving files to correct locations"
rsync -auv ./configs/ /opt/retropie/configs/
rsync -auv ./bin/ ~/bin/
rsync -auv ./runcommand.sh /opt/retropie/supplementary/runcommand/runcommand.sh
rsync -auv ./retropiemenu/* ~/RetroPie/retropiemenu/
rsync -auv ./asplashscreen.sh /opt/retropie/supplementary/splashscreen/asplashscreen.sh
