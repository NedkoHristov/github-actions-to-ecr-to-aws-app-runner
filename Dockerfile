# Using prebaked official alpine image (size of 49MB)
FROM node:current-alpine3.16
LABEL org.opencontainers.image.authors="nedko.hristov@severalclouds.com"
WORKDIR /app
COPY package*.json ./
