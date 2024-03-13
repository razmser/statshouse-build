FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ARG GO_VERSION=1.21
ARG NODE_VERSION=18.x

ENV PATH=/usr/lib/go-$GO_VERSION/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt-get update && apt-get upgrade && \
    apt-get install -y golang-$GO_VERSION-go curl make git && \
    curl -sL https://deb.nodesource.com/setup_$NODE_VERSION | bash && \
    apt-get install -y nodejs && \
    git config --global --add safe.directory /statshouse

