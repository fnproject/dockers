[![](http://badge-imagelayers.iron.io/fnproject/gcc:latest.svg)](http://imagelayers.iron.io/?images=fnproject/gcc:latest 'Get your own badge on imagelayers.iron.io')

Use `fnproject/gcc:dev` for building your C/C++ programs and `fnproject/gcc` for running them.

## Building this image

```sh
docker build -t fnproject/gcc:latest .
```

NOTE: Since this doesn't need any C specific stuff, use the versions from the `dev` build.

Tag the version, check it with `docker run --rm fnproject/gcc:dev gcc -v`:

```sh
docker tag -f fnproject/gcc:latest fnproject/gcc:5
docker tag -f fnproject/gcc:latest fnproject/gcc:5.Y
docker tag -f fnproject/gcc:latest fnproject/gcc:5.Y.Z
```

Push:

```sh
docker push fnproject/go
```
