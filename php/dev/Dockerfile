FROM fnproject/php

# php7-dev has a TON of packages, probably best for people to just add what they need. 
# RUN apk update && apk upgrade \
#  && apk add php7-dev@testing \
#  && rm -rf /var/cache/apk/*

RUN apk add --no-cache build-base curl

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
