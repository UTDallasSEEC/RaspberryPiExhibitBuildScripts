#!/bin/bash
#build scripts!
# :D
#install needed packages
sudo apt-get install debhelper devscripts build-essential

#download and build snake
git clone https://github.com/alexaverill/make-snake
cd make-snake
git checkout kanoSeec
cd .. 
tar -czvf make-snake_1.3.orig.tar.gz make-snake
cd make-snake
debuild -us -uc -i 
cd ../
sudo dpkg -i *.deb

#make art
git clone https://github.com/alexaverill/make-art
cd make-art/bin
sudo cp kano-draw /usr/bin/kano-draw

#download and build terminal quest
git clone https://github.com/alexaverill/terminal-quest
cd terminal-quest
git checkout seecKano
cd ../
tar -cvzf linux-story_1.2.orig.tar.gz terminal-quest
cd terminal-quest
debuild -us -uc -i
cd ../
sudo dpkg -i *.deb
cd ../
