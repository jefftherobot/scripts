#!/bin/bash

# Phone numbers
MY_NUMBER='+4844699500'
HER_NUMBER='+2154907924'
#HER_NUMBER='+4844690009'

MESSAGE=$(awk  NR==$((${RANDOM} % `wc -l < shakespeare.txt` + 1)) shakespeare.txt)

# Send a text message
RESPONSE=`curl -fSs -u "$TWILIO_ACCOUNT_SID:$TWILIO_AUTH_TOKEN" \
  -d "From=$MY_NUMBER" -d "To=$HER_NUMBER" -d "Body=$MESSAGE" \
  "https://api.twilio.com/2010-04-01/Accounts/$TWILIO_ACCOUNT_SID/Messages"`

# Log errors
if [ $? -gt 0 ]; then
  echo "Failed to send SMS: $RESPONSE"
  exit 1
fi
