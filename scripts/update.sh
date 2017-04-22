#!/bin/bash

ROOT=$HOME/Library/SlackLoc
source $ROOT/config.sh

SSID=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}')
if [[ $SSID = $OFFICE ]]; then
  EMOJI=$EMOJI_OFFICE
  TEXT=$TEXT_OFFICE
else
  EMOJI=$EMOJI_HOME
  TEXT=$TEXT_HOME
fi

STATUS=$(echo "{\"status_text\":\"$TEXT\",\"status_emoji\":\"$EMOJI\"}" | $ROOT/urlencode.sh)
curl -d "token=$TOKEN&profile=$STATUS" https://slack.com/api/users.profile.set
