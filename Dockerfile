
FROM node:11-alpine

MAINTAINER Jônatas Rodrigues <jonatas.rodriguess@gmail.com>

RUN npm install -g -q \
    @vue/cli \
    @vue/cli-init \
    quasar-cli

RUN mkdir /app
COPY . /app
WORKDIR /app