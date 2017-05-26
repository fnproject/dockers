FROM funcy/base

RUN apk update && apk upgrade \
  && apk add php7 php7-openssl php7-phar php7-json php7-curl php7-iconv \
  && rm -rf /var/cache/apk/*

RUN ln -s /usr/bin/php7 /usr/bin/php
