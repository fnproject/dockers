
This image is a base image for  all the other images. Currently, it's just the alpine OS image with CA certs installed.

## Building this image

First, be sure to get the latest alpine:

```sh
docker pull alpine
docker pull alpine:edge
```

Then build it:

```sh
docker build -t fnproject/base:latest --no-cache .
```

Tag it with Alpine version, run `docker run --rm fnproject/base cat /etc/os-release` to check version.

```sh
docker tag fnproject/base:latest fnproject/base:X.Y.Z
```

Push:

```sh
docker push fnproject/base
```
