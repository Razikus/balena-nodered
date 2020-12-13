#!/bin/bash

while true
do
    node-red --userDir /data -D uiHost=0.0.0.0 -s /settings.json --port 80
    echo "SERVICE 'node-red' crashed with exit code $?.  Respawning.." >&2
    sleep 1
done
