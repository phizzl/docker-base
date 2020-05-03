FROM ubuntu:xenial
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN apt-get update && \
    apt-get -y install \
        sudo \
        curl \
        lsb-release && \
    useradd -m docker && echo "docker:docker" | chpasswd && \
    adduser docker sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    apt-get clean all

USER docker
CMD /bin/bash
