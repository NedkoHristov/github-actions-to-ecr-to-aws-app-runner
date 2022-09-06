# Use pre-baked alpine image (only 49MB)

FROM node:erbium-alpine3.12
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn
COPY . .
EXPOSE 80
CMD [ "node", "index.js" ]
