FROM fnproject/java:1.8

# To disable warning
ENV LEIN_ROOT 1
ENV LEIN_VERSION 2.6.1

RUN apk add --no-cache wget ca-certificates bash curl git

# Required by Figwheel
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted rlwrap

RUN wget -q "https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein" -O /usr/local/bin/lein

RUN chmod 0755 /usr/local/bin/lein && lein
