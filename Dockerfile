FROM node:14

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y libglu1 build-essential && \
    apt-get clean

RUN npm i --unsafe-perm -g gridsome@0.7.23

RUN mkdir -p /app
WORKDIR /app
