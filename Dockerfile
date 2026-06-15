FROM ghcr.io/radiorabe/ubi9-minimal:0.11.4@sha256:9d9f4695ed31b1856b258a1081abd15a99e1e62a7935b421a3c2e46bbdf62652

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
