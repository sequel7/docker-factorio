# Factorio Server

Build the image

```bash
docker build -t factorio .
```

Run the server

```bash
docker run -d -v $(pwd)/saves:/opt/factorio/saves \
           -p 34197:34197/udp \
           --restart=always \
           --name factorio-server \
           factorio 
```
