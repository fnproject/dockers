
## Building this image

```sh
docker build -t fnproject/scala:latest .
```

Tag the version, check it with `docker run --rm fnproject/scala scala -version`:

```sh
docker tag -f fnproject/scala:latest fnproject/scala:X
docker tag -f fnproject/scala:latest fnproject/scala:X.Y
docker tag -f fnproject/scala:latest fnproject/scala:X.Y.Z
```

Push:

```sh
docker push fnproject/scala
```
