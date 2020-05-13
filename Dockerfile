FROM node:10-alpine

COPY . /usr/src/app
WORKDIR /usr/src/app/UI
RUN ls
RUN pwd
RUN npm install
RUN npm install -g bower
RUN npm install -g gulp
RUN npm install  gulp
VOLUME ["/usr/src/app/UI"]
#443/tcp 80/tcp
EXPOSE 3000 
RUN gulp serve
#CMD ["gulp","serve"]
