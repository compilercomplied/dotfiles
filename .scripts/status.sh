#! /usr/bin/env bash

DATE=$(date '+%a, %e of %b')
TIME=$(date '+%k:%M')
BATTERY_LOAD=$(sudo tlp-stat -b | grep Charge | grep -P -o "[0-9]+.[0-9]?")
BATTERY_LOAD+="%"


BATTERY_STATUS=$(sudo tlp-stat -b | grep "status" | sed 's/.*= //')
BATTERY_ICON=""

if [ "$BATTERY_STATUS" == "Charging" ]
then
  BATTERY_ICON=""
elif [ "$BATTERY_STATUS" == "Discharging" ]
then
  BATTERY_ICON=""
else
  BATTERY_ICON=""
fi


SYSTEM_HEADER="<b>sys</b>"
INFO_HEADER="\\n<b>time</b>"
BATTERY_MSG=$(echo -e "\\nbattery:\\t$BATTERY_LOAD $BATTERY_ICON")
DATETIME=$(echo -e "\\n$DATE\\n$TIME")
MESSAGE=$SYSTEM_HEADER$BATTERY_MSG$INFO_HEADER$DATETIME


notify-send --app-name "status.sh" --urgency low "system & info" "$MESSAGE"
