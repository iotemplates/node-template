FROM node:12.18.1

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY server.js .

EXPOSE 3000

CMD [ "node", "server.js" ]
