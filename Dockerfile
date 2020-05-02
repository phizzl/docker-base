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
    adduser -S docker && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker
