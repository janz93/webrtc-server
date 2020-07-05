FROM node:12

# Create app directory
WORKDIR /usr/src/app

ADD package.json .

RUN npm install

ADD chatserver.js .

EXPOSE 6503
CMD ["node", "chatserver"]