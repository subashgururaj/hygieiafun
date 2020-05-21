FROM ubuntu
RUN apt-get update
RUN apt-get install -y git
#RUN mkdir -p /usr/app
RUN git clone https://github.com/subashgururaj/hygieiafun.git
RUN ls
RUN pwd
WORKDIR /hygieiafun/UI
RUN ls
RUN pwd
FROM node

RUN npm install
RUN npm install -g gulp
RUN gulp --version
CMD ["gulp","serve"]
