FROM alpine:latest
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN apk add --no-cache \
        sudo \
        rsync \
        zip \
        unzip \
        curl \
        ca-certificates \
        wget && \
    addgroup sudo && \
    adduser -S docker -G sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/docker && \
    echo "Set disable_coredump false" >> /etc/sudo.conf

USER docker
