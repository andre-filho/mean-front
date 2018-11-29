FROM node:10

EXPOSE 4200

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

RUN apt-get update -qq && apt-get install -yq google-chrome-stable

WORKDIR /front

ADD . /front

RUN yarn install

CMD yarn run start
