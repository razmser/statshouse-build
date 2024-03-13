FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ARG GO_VERSION=1.21
ARG NODE_VERSION=18.x
ARG UID
ARG GID

ENV PATH=/usr/lib/go-$GO_VERSION/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt-get update && apt-get upgrade && \
    apt-get install -y golang-$GO_VERSION-go curl make git sudo && \
    addgroup --gid $GID nonroot && \
    adduser --uid $UID --gid $GID --disabled-password --gecos "" nonroot && \
    echo 'nonroot ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers && \
    curl -sL https://deb.nodesource.com/setup_$NODE_VERSION | bash && \
    apt-get install -y nodejs && \
    git config --global --add safe.directory /statshouse

USER nonroot
