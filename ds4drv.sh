#!/bin/bash
#Install script for DS4DRV by: Librebowski.

echo " "
echo "***Welcome to Librebowskis DS4DRV install script intended for Debian, Ubuntu and Mint***"
sleep 2
echo " "
echo "Now installing dependencies..."
echo " "
sleep 3
echo "This may take up to a few minutes, please be patient."
echo " "
sleep 5
sudo apt-get update 
#uncomment below line to enable upgrade as this may cause the video driver to need to be reinstalled.
#sudo apt-get -y upgrade
sudo apt-get install python-pip
sudo -H pip install --upgrade pip
echo " "
echo "Now we will install DS4DRV..."
echo " "
sleep 5
sudo -H pip install ds4drv
cd ~/Downloads
	wget https://raw.githubusercontent.com/Librebowski/DS4DRV_Easy/master/50-ds4drv.rules
	sudo cp ~/Downloads/50-ds4drv.rules /etc/udev/rules.d/
	sudo udevadm control --reload-rules
	sudo udevadm trigger
	cd ~/.config
	wget https://raw.githubusercontent.com/Librebowski/DS4DRV_Easy/master/ds4drv.conf
echo "Driver is now properly installed, thank you for using my script!"
sleep 4
echo " "
echo " "
echo "For detailed instructions on how to start and pair the driver please consult the the readme..."
sleep 8
echo " "
echo " "
echo "Have a nice day."
sleep 3
