FROM debian:buster

RUN apt-get update && apt-get install -y nginx

COPY ./config/default /etc/nginx/sites-available/default

EXPOSE 9000

CMD [ "nginx", "-g", "daemon off;" ]
