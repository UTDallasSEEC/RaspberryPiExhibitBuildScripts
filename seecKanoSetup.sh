#!/bin/bash
# $1 should be default user
#script to setup kano for SEEC exhibits
#we need to remove extra icons
#we need to download, build, and install Terminal Quest, make-snake, and hopefully make-art
#we need to create a new user add it to sudo and remove default sudo access

#remove extra icons
rm /usr/share/kano-desktop/kdesk/kdesktop/{Apps.lnk,Home.lnk,Internet.lnk,Minecraft.lnk,PlusIcon.lnk,Pong.lnk,Profile.lnk,Scratch.lnk,SonicPi.lnk,Video.lnk,World.lnk}

#download and build terminal quest
git clone https://github.com/alexaverill/terminal-quest
cd terminal-quest
git checkout seecKano
cd ../
tar -cvzf linux-story_1.2.orig.tar.gz terminal-quest
cd terminal-quest
debuild -us -uc -i
cd ../
dpkg -i *.deb
cd ../

#setup database file
sudo mkdir /var/stats/
sudo chmod -R 777 /var/stats/
touch /var/stats/terminalstats.txt
echo "0" > /var/stats/terminalstats.txt
touch /var/stats/artstats.txt
echo "0" > /var/stats/artstats.txt

#download and build snake

#create new user

#set root user 
useradd seec
passwd seec
usermod -aG sudo seec
#remove root from default user
deluser $1 sudo


