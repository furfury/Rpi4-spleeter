#!/bin/sh
# get a fresh start
    sudo apt-get update
    sudo apt-get upgrade

# install the dependencies (if not already onboard)
    sudo apt-get -y install libhdf5-dev libc-ares-dev libeigen3-dev
    sudo apt-get -y install libatlas-base-dev libatlas3-base
    sudo apt-get -y install python3-pip 
    sudo apt-get -y install git
    sudo apt-get -y install samba samba-common-bin
    sudo pip3 install h5py
    sudo pip3 install -U --user six wheel mock

# download the wheel
   sudo apt install mtools   
   sudo mkdir /repo
   cd /repo
   sudo wget https://github.com/Qengineering/Tensorflow-Raspberry-Pi/raw/master/tensorflow-1.15.2-cp37-cp37m-linux_armv7l.whl

# Iinstall TensorFlow
  sudo -H pip3 install tensorflow-1.15.2-cp37-cp37m-linux_armv7l.whl

# And complete the installation by rebooting
  sudo reboot now