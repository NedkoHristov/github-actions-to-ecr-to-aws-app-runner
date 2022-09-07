FROM node:erbium-alpine3.15
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn
COPY . .
EXPOSE 80
CMD [ "node", "index.js" ]
