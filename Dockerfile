FROM node:10

EXPOSE 4200

RUN apt-get update -qq

WORKDIR /front

ADD . /front

RUN yarn install

# CMD 'npm start'
