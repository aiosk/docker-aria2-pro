FROM p3terx/aria2-pro

LABEL maintainer="andry.yosua@gmail.com" \
    org.opencontainers.image.authors="andry.yosua@gmail.com" \
    org.opencontainers.image.title="aria2-pro" \
    org.opencontainers.image.description="[p3terx/aria2-pro](https://github.com/P3TERX/Aria2-Pro-Docker) + healthcheck" \
    org.opencontainers.image.url="https://github.com/aiosk/docker-aria2-pro" \
    org.opencontainers.image.source="git@github.com:aiosk/docker-aria2-pro.git" \
    org.opencontainers.image.vendor="andry.yosua@gmail.com"

COPY rootfs /
HEALTHCHECK CMD /config/script/healthcheck.sh
