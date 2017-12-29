FROM node:8.1.2

EXPOSE 80

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
#close cash npm

RUN mkdir -p /var/www && cp -a /tmp/node_modules /var/www/
ADD . /var/www

WORKDIR /var/www

RUN npm run build

CMD ["npm", "start"]
