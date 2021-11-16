#!/bin/bash
if [[ "$(whoami)" != root ]]; then
    echo "This script can only be run as root"
    exit 1
fi
echo "Renaming old gain.wav file to gain.wav.bak"
mv /opt/CyberPatriot/gain.wav /opt/CyberPatriot/gain.wav.bak
echo "Copying over new gain.wav file"
wget https://github.com/elysium-suite/aeacus/raw/master/assets/wav/gain.wav -P /opt/CyberPatriot/
echo "Done! Enjoy your new sound!"