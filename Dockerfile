#Sample Dockerfile for NodeJS Apps

FROM node:20.15.0

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 3000

CMD [ "node", "server.js" ]
