FROM ubuntu:latest
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN apt-get update && \
    apt-get -y install \
        rsync \
        zip \
        unzip \
        curl \
        apt-transport-https \
        lsb-release \
        ca-certificates \
        software-properties-common \
        wget && \
    useradd -m docker && echo "docker:docker" | chpasswd && \
    adduser docker sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    apt-get clean

USER docker
CMD /bin/bash
