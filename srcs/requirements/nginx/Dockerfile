FROM debian:bullseye

# test: vim
RUN apt-get update && apt-get install -y \
	nginx \
	openssl \
	netcat \
	vim \ 
	&& rm -rf /var/lib/apt/lists/*

COPY ./config/default.conf /etc/nginx/conf.d/default.conf

ARG WP_DOMAIN_NAME

RUN mkdir -p /etc/nginx/ssl \
	&& openssl req \
	-x509 \
	-nodes \
	-newkey rsa:2048 \
	-keyout /etc/nginx/ssl/user42.42.key \
	-out /etc/nginx/ssl/user42.42.crt \
	-days 365 \
	-subj /CN=${WP_DOMAIN_NAME}

EXPOSE 443
EXPOSE 9000

CMD [ "nginx", "-g", "daemon off;" ]
