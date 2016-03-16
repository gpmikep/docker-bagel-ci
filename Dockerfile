# Base image with initial set of node modules installed into /src/node_modules
FROM gpmikep/docker-node-chrome

RUN mkdir -p /src
WORKDIR /src
ADD package.json .
RUN npm install
