FROM node:latest

MAINTAINER Mike Polinowski

ENV NODE_ENV=production
ENV PORT=3000

COPY . /app
WORKDIR /app

RUN npm install

EXPOSE $PORT
ENTRYPOINT ["npm", "start"]