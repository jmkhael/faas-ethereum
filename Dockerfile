FROM node:latest
RUN npm install -g truffle

ADD src src
WORKDIR src
RUN npm install
RUN truffle compile
EXPOSE 8080
CMD [ "npm", "run", "dev" ]
