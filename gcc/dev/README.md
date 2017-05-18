[![](http://badge-imagelayers.iron.io/funcy/gcc:dev.svg)](http://imagelayers.iron.io/?images=funcy/gcc:dev 'Get your own badge on imagelayers.iron.io')

## Using

TODO:

## Building this image


```sh
docker build -t funcy/gcc:dev .
```

Tag the version, check it with `docker run --rm funcy/gcc:dev gcc -v`:

```sh
docker tag -f funcy/gcc:dev funcy/gcc:5-dev
docker tag -f funcy/gcc:dev funcy/gcc:5.Y-dev
docker tag -f funcy/gcc:dev funcy/gcc:5.Y.Z-dev
```

Push:

```sh
docker push funcy/go
```
