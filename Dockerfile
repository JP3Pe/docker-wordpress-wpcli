# A file to create wordpress-cli
FROM wordpress:cli
USER root
RUN apk update && apk upgrade && apk add --no-cache openssl
RUN wget https://github.com/jwilder/dockerize/releases/download/v0.6.1/dockerize-alpine-linux-amd64-v0.6.1.tar.gz && \
	tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-v0.6.1.tar.gz && \
	rm dockerize-alpine-linux-amd64-v0.6.1.tar.gz
