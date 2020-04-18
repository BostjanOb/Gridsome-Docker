FROM node:12-alpine

RUN apk update && \
    apk upgrade && \
    apk --no-cache add util-linux git \
        g++ gcc libgcc libstdc++ linux-headers make python && \
    rm -rf /var/cache/apk/*

RUN npm i --unsafe-perm -g gridsome@0.7.13

RUN mkdir -p /app
WORKDIR /app
