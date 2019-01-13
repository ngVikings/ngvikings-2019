FROM node

ADD . /app
RUN chown -R node:node /app

USER node
WORKDIR /app

EXPOSE 80 443
CMD npm install && npm run gulp -- serve
