## Using

```sh
docker run -it --rm funcy/perl perl -v
```

## Building this image

```sh
docker build -t funcy/perl:latest .
```

Tag the version, check it with `docker run --rm funcy/perl perl -v`:

```sh
docker tag -f funcy/perl:latest funcy/perl:5
docker tag -f funcy/perl:latest funcy/perl:5.Y
docker tag -f funcy/perl:latest funcy/perl:5.Y.Z
```

Push:

```sh
docker push funcy/perl
```
