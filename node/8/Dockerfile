FROM node:8-alpine

RUN deluser --remove-home node \
  && addgroup -S node -g 1001 \
  && adduser -S -G node -u 1001 node \
  && addgroup -g 1000 -S fn \
  && adduser -S -u 1000 -G fn fn
