FROM p3terx/aria2-pro

COPY rootfs /
HEALTHCHECK CMD /config/script/healthcheck.sh
