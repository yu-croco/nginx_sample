FROM nginx:1.19.2

ENV NGINX_ENTRYPOINT_QUIET_LOGS=1
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
    apt-get update &&\
    ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&\
    apt-get update && apt-get -y install logrotate

COPY ./config/server.conf /etc/nginx/nginx.conf
COPY config/nginx /etc/logrotate.d/nginx
