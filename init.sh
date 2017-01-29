#!/bin/bash

if [ ! -f $SAVEFILE ]; then
  /opt/factorio/bin/x64/factorio --create $SAVEFILE --server-settings /opt/factorio/data/server-settings.json
fi
/opt/factorio/bin/x64/factorio --start-server $SAVEFILE --server-settings /opt/factorio/data/server-settings.json
