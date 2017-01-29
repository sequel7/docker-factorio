#!/bin/bash

cat /opt/factorio/data/server-settings.example.json | sed s/"GAMENAME"/"$FACTORIO_SERVER_GAME"/ | sed s/"GAME_PASSWORD"/"$FACTORIO_SERVER_GAME_PASSWORD"/ > /opt/factorio/data/server-settings.json

if [ ! -f $SAVEFILE ]; then
  /opt/factorio/bin/x64/factorio --create $SAVEFILE --server-settings /opt/factorio/data/server-settings.json
fi
/opt/factorio/bin/x64/factorio --start-server $SAVEFILE --server-settings /opt/factorio/data/server-settings.json
