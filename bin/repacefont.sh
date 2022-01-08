#!/usr/bin/env bash

cat ~/bin/font.txt | while read line 
do
   sudo cp ~/bin/pixel"$1".ttf "$line"
done
