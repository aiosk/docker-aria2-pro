# aria2-pro

[p3terx/aria2-pro](https://github.com/P3TERX/Aria2-Pro-Docker) + healthcheck

## docker-compose.yml
```
version: "2"
services:
  aria2:
    image: ghcr.io/aiosk/aria2-pro:latest
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - UMASK_SET=${UMASK_SET}
      - RPC_SECRET=${RPC_SECRET}
      - RPC_PORT=${RPC_PORT}
      - LISTEN_PORT=6888
      - DISK_CACHE=64M
      - IPV6_MODE=false
      - UPDATE_TRACKERS=true
      - CUSTOM_TRACKER_URL=
      - TZ=${TZ}
    volumes:
      - /path/to/config:/config
      - /path/to/downloads:/downloads
      - /path/to/movies:/movies
      - /path/to/tvshows:/tv
    ports:
      - 6800:6800
      - 6888:6888
      - 6888:6888/udp
    restart: unless-stopped
    mem_limit: 32m
    logging:
      driver: json-file
      options:
        max-size: 1m

  ariang:
    image: ghcr.io/aiosk/ariang:latest
    environment:
      - PUID=${PUID}
      - PGID=${PGID}
      - TZ=${TZ}
      - ARIA2_TOKEN=${RPC_SECRET}
    ports:
      - 6880:80
    restart: unless-stopped
    mem_limit: 32m
    logging:
      driver: json-file
      options:
        max-size: 1m
```
