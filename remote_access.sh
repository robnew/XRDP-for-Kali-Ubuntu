#!/bin/bash
apt install xrdp tango-icon-theme
apt-get install xfce4


# create or edit our .xsession  file in our home directory.
echo xfce4-session >~/.xsession

# make a backup copy of the current xrdp/startwm.sh file
sudo mv /etc/xrdp/startwm.sh /etc/xrdp/startwm.sh.orig

# Copy new new startwm.sh file that wil load XFCE4 when connecting via RDP
cp  startwm.sh /etc/xrdp/startwm.sh

# Enable thre XRDP service
systemctl enable xrdp

# Start the XRDP service
service xrdp start

