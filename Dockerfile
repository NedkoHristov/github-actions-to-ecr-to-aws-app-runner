<<<<<<< HEAD
# Use pre-baked alpine image (only 49MB)

FROM node:erbium-alpine3.12
=======
<<<<<<< HEAD
# Using prebaked official alpine image (size of 49MB)
FROM node:current-alpine3.16
LABEL org.opencontainers.image.authors="nedko.hristov@severalclouds.com"
>>>>>>> 001891c6a7de892c71e2423ec9dd8b4d036c9890
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn
=======
# From prebaked image
#FROM ruby:2.6
#WORKDIR /usr/src/app
#COPY tcp_server.rb ./
#CMD ["ruby", "./tcp_server.rb"]
#EXPOSE 80/tcp

# From alpine image optimized for size and speed
FROM alpine:latest
LABEL org.opencontainers.image.authors="nedko.hristov@severalclouds.com"
ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler
# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache gmp gmp-dev && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*
RUN mkdir -p /usr/src/app
RUN ruby --version
WORKDIR /usr/src/app

>>>>>>> parent of 2ed081f (Migrate to nodejs example, ruby does not accept HTTPS traffic correctly)
COPY . .

EXPOSE 8080
CMD ["ruby", "./tcp_server.rb"]