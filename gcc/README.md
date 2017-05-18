[![](http://badge-imagelayers.iron.io/funcy/gcc:latest.svg)](http://imagelayers.iron.io/?images=funcy/gcc:latest 'Get your own badge on imagelayers.iron.io')

Use `funcy/gcc:dev` for building your C/C++ programs and `funcy/gcc` for running them.

## Building this image

```sh
docker build -t funcy/gcc:latest .
```

NOTE: Since this doesn't need any C specific stuff, use the versions from the `dev` build.

Tag the version, check it with `docker run --rm funcy/gcc:dev gcc -v`:

```sh
docker tag -f funcy/gcc:latest funcy/gcc:5
docker tag -f funcy/gcc:latest funcy/gcc:5.Y
docker tag -f funcy/gcc:latest funcy/gcc:5.Y.Z
```

Push:

```sh
docker push funcy/go
```
