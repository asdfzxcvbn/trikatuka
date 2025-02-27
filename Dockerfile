FROM node
# Create app directory

WORKDIR /usr/src/app

COPY webapp webapp
COPY server.js server.js
COPY Gruntfile.js Gruntfile.js
COPY package*.json ./

RUN npm install
RUN npm run build --force
ENTRYPOINT [ "node", "server.js" ]