```
$ cat factorio.sh  
#!/bin/bash  
  
PORT=34197  
  
docker run -d \  
  --env FACTORIO_SERVER_GAME_PASSWORD=cultofthefactorio \  
  --env FACTORIO_SERVER_GAME="Cult of the Factorio" \  
  --env FACTORIO_SERVER_PORT=$PORT \  
  -p $PORT:$PORT/udp \  
  factorio
  ```
