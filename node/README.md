[![](https://badge.imagelayers.io/funcy/node:latest.svg)](https://imagelayers.io/?images=funcy/node:latest 'Get your own badge on imagelayers.io')

Docker Hub: https://hub.docker.com/r/funcy/node/

## Using

```sh
docker run -it --rm funcy/node node -v
```

## Building this image

**NOTE: Temporarily using [mhart/alpine-node](https://github.com/mhart/alpine-node) for v5 images until Alpine package updated.**

```sh
ruby build.rb
```

Push:

```sh
docker push funcy/node
```
