FROM mhart/alpine-node:8
MAINTAINER JAKUB JUSZCZAK <jakub@nextindex.de>

ARG MAILTRAIN_VERSION=1.24.0

RUN set -ex && apk add --no-cache curl \
  && cd /tmp \
  && curl -fSL https://github.com/andris9/mailtrain/archive/v${MAILTRAIN_VERSION}.tar.gz -o mailtrain.tar.gz \
  && tar xzf mailtrain.tar.gz \
  && mkdir /app \
  && mv mailtrain-${MAILTRAIN_VERSION}/*  /app

ADD ./settings /app
WORKDIR /app

# Mailtrain contain native dependencies so pyhton needs to be insalled

RUN apk add --no-cache make gcc g++ python && \
  npm install --production && \
  npm cache clean --force && \
  apk del make gcc g++ python

ENV NODE_ENV=production
CMD ["node", "index.js"]
