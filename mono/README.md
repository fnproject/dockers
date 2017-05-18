[![](http://badge-imagelayers.iron.io/funcy/mono:latest.svg)](http://imagelayers.iron.io/?images=funcy/mono:latest 'Get your own badge on imagelayers.iron.io')

## Using

```sh
docker run -it --rm funcy/mono mono --version
```

## Building this image

```sh
docker build -t funcy/mono:latest .
```

Tag the version, check it with `docker run --rm funcy/mono mono --version`:

```sh
docker tag -f funcy/mono:latest funcy/mono:X
docker tag -f funcy/mono:latest funcy/mono:X.Y
docker tag -f funcy/mono:latest funcy/mono:X.Y.Z
```

Push:

```sh
docker push funcy/mono
```
