ARG REG
FROM ${REG}/base

RUN apk add --no-cache libxml2 libxslt libevent libffi glib ncurses readline \
    openssl yaml zlib curl libpq ruby ruby-io-console ruby-bundler \
    ruby-bigdecimal 

RUN addgroup -g 1000 -S fn && adduser -S -u 1000 -G fn fn
