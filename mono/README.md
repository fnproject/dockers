[![](http://badge-imagelayers.iron.io/fnproject/mono:latest.svg)](http://imagelayers.iron.io/?images=fnproject/mono:latest 'Get your own badge on imagelayers.iron.io')

## Using

```sh
docker run -it --rm fnproject/mono mono --version
```

## Building this image

```sh
docker build -t fnproject/mono:latest .
```

Tag the version, check it with `docker run --rm fnproject/mono mono --version`:

```sh
docker tag -f fnproject/mono:latest fnproject/mono:X
docker tag -f fnproject/mono:latest fnproject/mono:X.Y
docker tag -f fnproject/mono:latest fnproject/mono:X.Y.Z
```

Push:

```sh
docker push fnproject/mono
```
