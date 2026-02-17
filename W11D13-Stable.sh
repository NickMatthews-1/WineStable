#!/bin/bash

#This enables 32bit architecture
sudo dpkg --add-architecture i386

#Downloads and adds the repository key
sudo mkdir -pm755 /etc/apt/keyrings

wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -

#This downloads the WineHQ sources file
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources

#This updates the package information
sudo apt update

#This upgrades the packages
sudo apt upgrade

#This installs Wine version 11
sudo apt install --install-recommends winehq-stable

#Subject to GPLv3 License Copyright Nicholas Matthews 2026
