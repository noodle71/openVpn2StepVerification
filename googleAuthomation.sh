#!/usr/bin/expect -f

# Variables
set timeout -1
set nArgs [llength $argv]
set user [lindex $argv 0]
set pass [lindex $argv 1]
set googleAuthSecret [lindex $argv 2]
set openVpnConfigFile [lindex $argv 3]

set googleAuthToken [exec python3 createToken.py $googleAuthSecret]
if { $nArgs >= 4 } {
  # Access to device
  spawn sudo openvpn $openVpnConfigFile

  if { $nArgs > 4 } {
    set sudoPass [lindex $argv 4]
    expect "\[sudo\]*"
    send -- "$sudoPass\r"
  }

  expect "\[Username\]*"
  send -- "$user\r"

  expect "\[Password\]*"
  send -- "$pass\r"

  expect "\[Response\]*"
  send -- "$googleAuthToken\r"

  interact
  close
} else {
  puts "Usage: ./googleAuthomationStart.sh   openvpn_username   openvpn_password   google_auth_secret   openvpn_config_file   sudo_password";
}
