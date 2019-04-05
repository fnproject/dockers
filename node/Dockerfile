FROM node:alpine

# RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
# RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

# RUN apk update && apk upgrade \
#   && apk add nodejs@edge \
#   && npm uninstall -g npm \
#   && rm -rf /var/cache/apk/*

RUN deluser --remove-home node \
  && addgroup -S node -g 1001 \
  && adduser -S -G node -u 1001 node \
  && addgroup -g 1000 -S fn \
  && adduser -S -u 1000 -G fn fn
