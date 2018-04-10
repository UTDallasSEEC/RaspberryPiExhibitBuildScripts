#!/bin/bash
#user updating script
# $1 should be default user
#create new user, set password, add to sudo, then remove sudo from normal user 
useradd seecAdmin
passwd seecAdmin #set password to s33cadmin
usermod -aG sudo seec
#remove root from default user
deluser $1 sudo
