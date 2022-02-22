#!/bin/bash

# curl -sL http://192.168.0.2:4444/Goksel/Arka%20Bahcem | grep -E -o '".*.mp3"' | sed 's/^"//g' | sed 's/"$//g' | awk '{print "http://192.168.0.2:4444/Goksel/Arka%20Bahcem/"$1}' | xarg mpv

curl -sL http://192.168.0.2:4444/"$1" | grep -E -o '".*.mp3"' | sed 's/^"//g' | sed 's/"$//g' | awk -v folder="$1" '{print "http://192.168.0.2:4444/"folder"/"$1}' | xargs mpv

