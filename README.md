#USE
./googleAuthomationStart.sh openvpn_username openvpn_password google_auth_secret openvpn_config_file
#INSTALL EXPECT
sudo apt-get install expect
#INSTALL PIP
sudo apt-get install python-pip python-dev build-essential
sudo -H pip install --upgrade pip
sudo pip install --upgrade virtualenv
#INSTALL ONETIMEPASS
sudo pip install onetimepass
