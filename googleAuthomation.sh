#!/usr/bin/expect -f

# Variables
set user [lindex $argv 0]
set pass [lindex $argv 1]
set googleAuthSecret [lindex $argv 2]
set openVpnConfigFile [lindex $argv 3]
set googleAuthToken [exec python createToken.py $googleAuthSecret]

# Access to device
spawn sudo openvpn $openVpnConfigFile

expect "*Enter Auth Username:*"
send -- "$user\r"

expect "*Enter Auth Password:*"
send -- "$pass\r"

expect "*Response:*"
send -- "$googleAuthToken\r"

interact
close
