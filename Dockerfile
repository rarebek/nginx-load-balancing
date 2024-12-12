FROM node:22-alpine

WORKDIR /usr/src/app

COPY udevslabs-lesson2-app/package*.json ./

RUN npm install

COPY udevslabs-lesson2-app/ .

CMD ["node", "app.js"]