FROM node:12.3.1

RUN npm install -g http-server

WORKDIR /app

COPY package*.json ./

RUN npm install

# RUN npm -g install vue-cli

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "http-server", "dist" ]

# CMD ["npm", "run", "dev"]
# ENTRYPOINT ["sh", "./docker-entrypoint.sh"]