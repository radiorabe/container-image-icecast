FROM ghcr.io/radiorabe/ubi9-minimal:0.12.0@sha256:ddf3ac33c48b5005cc325732cb547279a926f29b3db9adcbd844f1cf94dcf831

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
