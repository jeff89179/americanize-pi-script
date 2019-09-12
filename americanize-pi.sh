#!/bin/bash

# Courtesy of Andy http://andy.dynamicbits.com/
# Found in his comment here...https://rohankapoor.com/2012/04/americanizing-the-raspberry-pi/

sudo grep ^en_US\.UTF-8 /usr/share/i18n/SUPPORTED > /var/lib/locales/supported.d/local

sudo dpkg-reconfigure locales

sudo dpkg-reconfigure keyboard-configuration

sudo echo "America/Chicago" > /etc/timezone

sudo dpkg-reconfigure -f noninteractive tzdata

sudo sed -i '/ftp.uk.debian.org/s/uk/us/g' /etc/apt/sources.list

sudo apt-get update
