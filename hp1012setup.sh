#!bin/bash
##hp1012setup.sh

sudo apt-get install foo2zjs
/usr/bin/getweb 1020
sudo "If it's first run -- run script again, after downloading sihp1020.img. Place it into current folder"
arm2hpdl sihp1020.img > sihp1020.dl
sudo mkdir /usr/share/foo2zjs/firmware/
sudo cp sihp1020.dl /usr/share/foo2zjs/firmware/
