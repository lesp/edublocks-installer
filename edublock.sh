#!/bin/bash

#Edu_blocks install script
#Les Pounder September 17 2016
#V0.1

echo "Making edublocks directory"
mkdir /home/pi/edublocks
echo "Downloading the package"
wget http://edupython.co.uk/blockly.zip
echo "Extracting the package to /home/pi/edublocks"
unzip blockly.zip -d /home/pi/edublocks 
echo "Copying the desktop shortcut to your desktop"
cp /home/pi/edublocks/edublocks.desktop /home/pi/Desktop
echo "All done, enjoy hacking with edublocks"


