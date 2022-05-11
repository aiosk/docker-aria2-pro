LABEL org.opencontainers.image.description [p3terx/aria2-pro](https://github.com/P3TERX/Aria2-Pro-Docker) + healthcheck

FROM p3terx/aria2-pro

COPY rootfs /
HEALTHCHECK CMD /config/script/healthcheck.sh
