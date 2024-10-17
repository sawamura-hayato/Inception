FROM debian:bullseye

# test: vim
RUN apt-get update && apt-get install -y \
	mariadb-server \
	mariadb-client \
	tini \
	vim \
	&& rm -rf /var/lib/apt/lists/*

COPY ./config/my.cnf /etc/mysql/my.cnf
RUN mkdir -p /var/run/mysqld
RUN chown mysql:mysql /var/run/mysqld

COPY ./tools/init.sh /usr/local/bin/init.sh
RUN chmod +x /usr/local/bin/init.sh

WORKDIR /

EXPOSE 3306

ENTRYPOINT ["/usr/bin/tini", "--", "init.sh"]
