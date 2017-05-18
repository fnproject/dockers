
This image is a base image for  all the other images. Currently, it's just the alpine OS image with CA certs installed.

## Building this image

First, be sure to get the latest alpine:

```sh
docker pull alpine
docker pull alpine:edge
```

Then build it:

```sh
docker build -t funcy/base:latest --no-cache .
```

Tag it with Alpine version, run `docker run --rm funcy/base cat /etc/os-release` to check version.

```sh
docker tag funcy/base:latest funcy/base:X.Y.Z
```

Push:

```sh
docker push funcy/base
```
