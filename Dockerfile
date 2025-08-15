FROM ghcr.io/radiorabe/ubi9-minimal:0.9.2

RUN    microdnf install -y \
         almalinux-release-synergy \
    && microdnf install -y \
         icecast \
    && microdnf clean all \
    && chmod a-s \
         /usr/bin/* \
         /usr/sbin/* \
         /usr/libexec/*/*

USER icecast:icecast
