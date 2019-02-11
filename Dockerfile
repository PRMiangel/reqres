FROM node:8.15

LABEL maintainer="reqres"

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD ["node", "app.js"]