FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install typescript -g

RUN npm install -g ts-node

RUN npm install

RUN tsc

COPY . .

EXPOSE 5000

CMD [ "node", "dist/src/index.js" ]