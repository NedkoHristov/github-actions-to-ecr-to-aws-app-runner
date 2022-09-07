FROM node:current-alpine3.16
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn
COPY . .
EXPOSE 80
CMD [ "node", "index.js" ]
