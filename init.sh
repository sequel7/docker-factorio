#!/bin/bash

if [ ! -f /opt/factorio/saves/save0.zip ]; then
  /opt/factorio/bin/x64/factorio --create save0
fi
/opt/factorio/bin/x64/factorio --start-server save0
