
This image is a base image for all the other images. Currently, it's just the alpine OS image with CA certs installed. 

## Building this image

First, be sure to get the latest alpine:

```sh
docker pull alpine:edge
```

Then build it:

```sh
docker build -t fnproject/base:edge .
```

Push:

```sh
docker push fnproject/base
```
