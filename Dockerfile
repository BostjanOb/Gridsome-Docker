FROM node:12

RUN apt-get update && \
    apt-get upgrade && \
    apt-get install -y libglu1 build-essential && \
    apt-get clean

RUN npm i --unsafe-perm -g gridsome@0.7.14

RUN mkdir -p /app
WORKDIR /app
