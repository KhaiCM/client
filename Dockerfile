FROM node:12.3.1

WORKDIR /app

COPY package.json .

RUN npm install

RUN npm -g install vue-cli

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]