# docker-zoneminder
Docker for zoneminder webcam server

RUN:
docker run --shm-size=4096m -v /LOCAL/ZONEMINDER/DIR:/var/cache/zoneminder -p IP:PORT:80 --name zoneminder docker-zoneminder:latest

