import onetimepass as otp
import sys
argLen = len(sys.argv)
if argLen != 2:
  print("Invalid parameter. Enter Google Auth Token")
else:
  mySecret = sys.argv[1]
  myToken = otp.get_totp(mySecret)
  print(myToken)
