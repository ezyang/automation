#!/bin/bash
URL="http://192.168.86.158:9123/elgato/lights"
curl -s "$URL" | jq ".lights[0].on |= 1-." | curl -s -X PUT "$URL" -H 'Content-Type: application/json' --data-binary @-
