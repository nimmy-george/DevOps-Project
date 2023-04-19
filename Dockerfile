FROM node:14

WORKDIR /DevOps Project/Business-Data-Generator

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]