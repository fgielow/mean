FROM node:10.13.0

WORKDIR /usr/src/app

COPY ./package.json /usr/src/app

COPY ./package-lock.json /usr/src/app

RUN npm install

ADD . /usr/src/app

#RUN yarn build
#RUN ng build --prod

RUN ./node_modules/.bin/ng build

EXPOSE 4040

CMD ["yarn", "serve"]
