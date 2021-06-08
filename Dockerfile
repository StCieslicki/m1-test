FROM node:14-alpine

ARG APP_VERSION_VAR

RUN apk add --no-cache git

WORKDIR /usr/app

COPY package*.json /usr/app/
#COPY .npmrc /usr/app/

#RUN npm ci

ENV APP_VERSION=$APP_VERSION_VAR

EXPOSE 80
EXPOSE 5858

CMD [ "npx", "nodemon"]
