FROM docker.io/nginx:latest
ARG user=hygieia
ARG group=hygieia
ARG uid=10000
ARG gid=10000
RUN groupadd -g ${gid} ${group} \
    && useradd -u ${uid} -g ${gid} -m -s /bin/bash ${user}

COPY docker/default.conf /etc/nginx/conf.d/default.conf.templ

COPY docker/conf-builder.sh /usr/bin/conf-builder.sh
COPY dist /usr/share/nginx/html
WORKDIR /usr

RUN chown -R 10000:10000 /usr/bin/conf-builder.sh && \
        chown -R 10000:10000 /var/cache/nginx && \
        chown -R 10000:10000 /var/log/nginx && \
        chown -R 10000:10000 /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
        chown -R 10000:10000 /var/run/nginx.pid


RUN chown -R  10000:10000 /usr/share/nginx/html/

EXPOSE 80 443
USER 10000
CMD conf-builder.sh &&\
  nginx -g "daemon off;"
