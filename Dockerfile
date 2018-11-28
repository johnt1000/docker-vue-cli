FROM node:11-alpine

MAINTAINER Jônatas Rodrigues <jonatas.rodriguess@gmail.com>

RUN npm install -g -q \
    @vue/cli@3.2.1 \
    @vue/cli-init \
    quasar-cli@0.17.22

WORKDIR /app

COPY . /app