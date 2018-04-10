#!/bin/bash
# $1 should be default user
#script to setup kano for SEEC exhibits
#we need to remove extra icons
#we need to download, build, and install Terminal Quest, make-snake, and hopefully make-art
#we need to create a new user add it to sudo and remove default sudo access

#remove extra icons
sudo rm /usr/share/kano-desktop/kdesk/kdesktop/{Apps.lnk,Home.lnk,Internet.lnk,Minecraft.lnk,PlusIcon.lnk,Pong.lnk,Profile.lnk,Scratch.lnk,SonicPi.lnk,Video.lnk,World.lnk}
sudo rm /usr/bin/kano-feedback-widget

#setup make-art to be done correctly
mkdir /home/seec/.kanoprofile/apps/
mkdir /home/seec/.kanoprofile/apps/kano-draw/
touch /home/seec/.kanoprofile/apps/kano-draw/state.json
echo -e "{"level":14,"save_date":"2015-07-08T08:13:38.450890"}" >/home/seec/.kanoprofile/apps/kano-draw/state.json


#setup database file
sudo mkdir /var/stats/
sudo chmod -R 777 /var/stats/
touch /var/stats/terminalstats.txt
echo "0" > /var/stats/terminalstats.txt
touch /var/stats/artstats.txt
echo "0" > /var/stats/artstats.txt
echo "0" > /var/stats/snakestats.txt






