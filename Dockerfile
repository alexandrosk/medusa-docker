FROM node:18.14-alpine

RUN mkdir -p /opt/app

WORKDIR /opt/app

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

EXPOSE 9000

CMD [ "npm", "run", "start"]