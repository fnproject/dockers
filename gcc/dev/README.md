[![](http://badge-imagelayers.iron.io/fnproject/gcc:dev.svg)](http://imagelayers.iron.io/?images=fnproject/gcc:dev 'Get your own badge on imagelayers.iron.io')

## Using

TODO:

## Building this image


```sh
docker build -t fnproject/gcc:dev .
```

Tag the version, check it with `docker run --rm fnproject/gcc:dev gcc -v`:

```sh
docker tag -f fnproject/gcc:dev fnproject/gcc:5-dev
docker tag -f fnproject/gcc:dev fnproject/gcc:5.Y-dev
docker tag -f fnproject/gcc:dev fnproject/gcc:5.Y.Z-dev
```

Push:

```sh
docker push fnproject/go
```
