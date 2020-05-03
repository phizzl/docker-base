FROM alpine:3.9
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN apk add --no-cache \
        sudo \
        curl && \
    addgroup sudo && \
    adduser -S docker -G sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/docker && \
    echo "Set disable_coredump false" >> /etc/sudo.conf

USER docker
