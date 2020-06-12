FROM ubuntu:focal
LABEL maintainer "Phizzl <the@phizzl.it>"

RUN apt-get update && apt-get install -y git rsync curl wget && apt-get clean all

CMD /bin/bash
