FROM alpine:latest
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN apk update install \
        sudo \
        rsync \
        zip \
        unzip \
        curl \
        apt-transport-https \
        lsb-release \
        ca-certificates \
        software-properties-common \
        wget && \
    adduser -S docker && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker
