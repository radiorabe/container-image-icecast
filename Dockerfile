FROM ghcr.io/radiorabe/ubi9-minimal:0.12.1@sha256:9a3f83629f9dd656727266b28ceb962824a337c34dab911ff4f0fce75acea642

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
