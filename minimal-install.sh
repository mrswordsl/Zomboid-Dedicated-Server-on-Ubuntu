#!/bin/bash
apt-get update -y
apt-get upgrade -y
add-apt-repository multiverse
dpkg --add-architecture i386
apt update
apt install lib32z1 lib32gcc-s1 libstdc++6:i386 gcc-multilib mc steamcmd software-properties-common -y
ufw allow 16261/udp
ufw allow 16262/udp
ufw allow 8766/udp
ufw allow 8767/udp
