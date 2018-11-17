#!/bin/bash
sudo apt-get install openjdk-8-jre
sudo apt-get install openjdk-8-jdk
sudo apt-get install git
sudo apt-get install zip unzip
sudo apt-get install make
sudo apt-get install bison
sudo apt-get install bc
sudo apt-get install gcc
git clone https://github.com/akhilnarang/scripts.git scripts
bash setup/android_build_env.sh
