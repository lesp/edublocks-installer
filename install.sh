#!/bin/bash

#Edu_blocks install script
#Les Pounder September 17 2016
#V0.2

#Version History
#0.2 - September 19 2016 -Fixed a bug in Easygui which caused installer to throw an error. Bug not present in edublocks code! https://github.com/robertlugg/easygui/issues/97
#0.1 - September 17 2016 -Initial test, worked well


echo "Making edublocks directory"
mkdir /home/pi/edublocks
echo "Downloading the package"
wget http://edupython.co.uk/blockly.zip
echo "Extracting the package to /home/pi/edublocks"
unzip blockly.zip -d /home/pi/edublocks 
echo "Copying the desktop shortcut to your desktop"
cp /home/pi/edublocks/edublocks.desktop /home/pi/Desktop
echo "Updating easygui choice box to fix a bug"
sudo cp /usr/local/lib/python3.4/dist-packages/easygui/boxes/choice_box.py /usr/local/lib/python3.4/dist-packages/easygui/boxes/choice_box.py.backup
sudo cp ./choice_box.py /usr/local/lib/python3.4/dist-packages/easygui/boxes/choice_box.py
echo "All done, enjoy hacking with edublocks"



