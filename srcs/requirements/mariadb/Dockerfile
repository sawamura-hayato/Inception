FROM debian:bookworm

RUN apt-get update && apt-get install -y \
	mariadb-server \
	&& rm -rf /var/lib/apt/lists/*

COPY ./config/my.cnf /etc/mysql/my.cnf

WORKDIR /

EXPOSE 3306

CMD ["mysqld_safe"]
