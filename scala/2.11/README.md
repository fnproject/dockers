
## Building this image

```sh
docker build -t funcy/scala:latest .
```

Tag the version, check it with `docker run --rm funcy/scala scala -version`:

```sh
docker tag -f funcy/scala:latest funcy/scala:X
docker tag -f funcy/scala:latest funcy/scala:X.Y
docker tag -f funcy/scala:latest funcy/scala:X.Y.Z
```

Push:

```sh
docker push funcy/scala
```
