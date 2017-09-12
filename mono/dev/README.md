[![](http://badge-imagelayers.iron.io/fnproject/mono:dev.svg)](http://imagelayers.iron.io/?images=fnproject/mono:dev 'Get your own badge on imagelayers.iron.io')

## Using

```sh
docker run -it --rm fnproject/mono:dev mono --version
```

## Building this image

```sh
docker build -t fnproject/mono:dev .
```

Tag the version, check it with `docker run --rm fnproject/mono:dev mono --version`:

```sh
docker tag fnproject/mono:dev fnproject/mono:4-dev
docker tag fnproject/mono:dev fnproject/mono:4.Y-dev
docker tag fnproject/mono:dev fnproject/mono:4.Y.Z-dev
```

Push:

```sh
docker push fnproject/mono
```
