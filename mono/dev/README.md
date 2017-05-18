[![](http://badge-imagelayers.iron.io/funcy/mono:dev.svg)](http://imagelayers.iron.io/?images=funcy/mono:dev 'Get your own badge on imagelayers.iron.io')

## Using

```sh
docker run -it --rm funcy/mono:dev mono --version
```

## Building this image

```sh
docker build -t funcy/mono:dev .
```

Tag the version, check it with `docker run --rm funcy/mono:dev mono --version`:

```sh
docker tag funcy/mono:dev funcy/mono:4-dev
docker tag funcy/mono:dev funcy/mono:4.Y-dev
docker tag funcy/mono:dev funcy/mono:4.Y.Z-dev
```

Push:

```sh
docker push funcy/mono
```
