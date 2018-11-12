FROM node:10.13.0

WORKDIR /usr/src/app

COPY ./package.json /usr/src/app

COPY ./package-lock.json /usr/src/app

RUN npm install

ADD . /usr/src/app

RUN yarn build

EXPOSE 4040

CMD ["yarn", "serve"]
