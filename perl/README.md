## Using

```sh
docker run -it --rm fnproject/perl perl -v
```

## Building this image

```sh
docker build -t fnproject/perl:latest .
```

Tag the version, check it with `docker run --rm fnproject/perl perl -v`:

```sh
docker tag -f fnproject/perl:latest fnproject/perl:5
docker tag -f fnproject/perl:latest fnproject/perl:5.Y
docker tag -f fnproject/perl:latest fnproject/perl:5.Y.Z
```

Push:

```sh
docker push fnproject/perl
```
