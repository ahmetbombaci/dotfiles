#!/bin/bash

# https://gist.github.com/dideler/85de4d64f66c1966788c1b2304b9caf1

source SECRETS

if [ "$( curl -s -o /dev/null -w "%{http_code}" 192.168.0.24:8200)" -ne 200 ];
then
        curl -X POST \
             -H 'Content-Type: application/json' \
                  -d '{"chat_id": "'"$CHAT_ID"'", "text": "Media server is down"}' \
                       https://api.telegram.org/bot"$BOT_TOKEN"/sendMessage
fi
