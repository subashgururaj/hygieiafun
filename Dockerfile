FROM node:10-alpine

COPY . /usr/src/app
WORKDIR /usr/src/app/UI
RUN ls
RUN pwd
RUN npm install
RUN npm install -g bower
RUN npm install -g gulp
VOLUME ["/usr/src/app/UI"]
EXPOSE 3000 
RUN gulp -v
CMD ["gulp", "serve"]
