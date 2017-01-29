#!/bin/bash

if [ ! -f $SAVEFILE ]; then
  /opt/factorio/bin/x64/factorio --create $SAVEFILE -c /opt/factorio/server-settings.json
fi
/opt/factorio/bin/x64/factorio --start-server $SAVEFILE -c /opt/factorio/server-settings.json
