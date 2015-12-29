#!/bin/sh
######################################################################################################
# This script I have prepared with collection of steps 												 #
# which will work fine on Ubuntu.    																 #
# Give following commands 																			 #
# $ chmod 755 firefox_building.sh 																     #
# $ ./firefox_building.sh																			 #
# Similar workaround you will find for windows here:                                                 #
# https://developer.mozilla.org/en-US/docs/Developer_Guide/Build_Instructions/Windows_Prerequisites  #
######################################################################################################

############### using good internet connection could save your time & efforts for this ###############

wget https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py && python bootstrap.py
if [ $? -eq 0 ]; then
    echo OK
else
    sudo apt-get install zip unzip mercurial g++ make autoconf2.13 yasm libgtk2.0-dev libglib2.0-dev libdbus-1-dev libdbus-glib-1-dev libasound2-dev libcurl4-openssl-dev libiw-dev libxt-dev mesa-common-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libpulse-dev
fi

## If above command fails try following one ##
# If above loop fails [possibly due to my coding ;) ]
# try only two commands 
# [1]  wget https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py && python bootstrap.py
#  if [1] fails then
# [2]  sudo apt-get install zip unzip mercurial g++ make autoconf2.13 yasm libgtk2.0-dev libglib2.0-dev libdbus-1-dev libdbus-glib-1-dev libasound2-dev libcurl4-openssl-dev libiw-dev libxt-dev mesa-common-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libpulse-dev
#
#
################################
cd /home/abc/Hackathon/mozilla-central

./mach bootstrap

./mach build

./mach run
