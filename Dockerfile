FROM node:10

EXPOSE 4200

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

RUN apt-get update -qq && apt-get install -yq google-chrome-stable

WORKDIR /front

RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

ADD . /front

RUN yarn add @angular/cli --global && yarn install

CMD yarn run start
