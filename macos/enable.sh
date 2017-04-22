#!/bin/bash

ln -s "$PWD/scripts" "$HOME/Library/SlackLoc"
launchctl load ./cron.plist
