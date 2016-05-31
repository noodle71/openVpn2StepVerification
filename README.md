#openVpn2StepVerification

##Description

Relieves the pain using openvpn with Google two steps verification.

It generates the Google Auth Token automatically.

###USE

```bash
./googleAuthomationStart.sh   openvpn_username   openvpn_password   google_auth_secret   openvpn_config_file
```

*IMPORTANT* If you need to enter the sudo password when connect to openvpn then:

```bash
./googleAuthomationStart.sh   openvpn_username   openvpn_password   google_auth_secret   openvpn_config_file   sudo_password
```

###INSTALL EXPECT

```bash
sudo apt-get install expect
```

###INSTALL PIP

```bash
sudo apt-get install python-pip python-dev build-essential
sudo -H pip install --upgrade pip
sudo pip install --upgrade virtualenv
```

###INSTALL ONETIMEPASS

```bash
sudo pip install onetimepass
```
