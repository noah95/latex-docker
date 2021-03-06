#! /bin/bash

# exit if a command fails
set -e

# install full texlive distribution
apt-get update
apt-get install -y software-properties-common
add-apt-repository -y ppa:jonathonf/texlive-2018
apt-get update && apt-get install -y texlive-full biber build-essential git

# cleanup package manager
apt-get autoclean && apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# prepare dir
mkdir /source