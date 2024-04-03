FROM debian:bookworm

RUN apt-get update && apt-get install -y \
	mariadb-server \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 3306

VOLUME ["/home/hsawamur/data"]

CMD ["mysqld_safe"]
