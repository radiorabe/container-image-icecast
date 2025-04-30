FROM ghcr.io/radiorabe/ubi9-minimal:0.8.3

RUN    microdnf install -y \
         almalinux-release-synergy \
         shadow-utils \
    && microdnf install -y \
         icecast \
    && useradd -u 1001 -r -g 0 -s /sbin/nologin \
         -c "Default Application User" default \
    && microdnf remove -y \
         libsemanage \
         shadow-utils \
    && microdnf clean all \
    && chmod a-s \
         /usr/bin/* \
         /usr/sbin/* \
         /usr/libexec/*/*

USER 1001
