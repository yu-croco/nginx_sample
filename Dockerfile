FROM nginx:1.19.2

COPY ./config/server.conf /etc/nginx/nginx.conf
