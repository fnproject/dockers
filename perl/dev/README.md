## Using

```sh
docker run -it --rm funcy/perl:dev perl -v
```

## Building this image

```sh
docker build -t funcy/perl:dev .
```

Tag the version, check it with `docker run --rm funcy/perl:dev perl -v`:

```sh
docker tag funcy/perl:dev funcy/perl:5-dev
docker tag funcy/perl:dev funcy/perl:5.Y-dev
docker tag funcy/perl:dev funcy/perl:5.Y.Z-dev
```

Push:

```sh
docker push funcy/perl
```
