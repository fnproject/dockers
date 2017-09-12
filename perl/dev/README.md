## Using

```sh
docker run -it --rm fnproject/perl:dev perl -v
```

## Building this image

```sh
docker build -t fnproject/perl:dev .
```

Tag the version, check it with `docker run --rm fnproject/perl:dev perl -v`:

```sh
docker tag fnproject/perl:dev fnproject/perl:5-dev
docker tag fnproject/perl:dev fnproject/perl:5.Y-dev
docker tag fnproject/perl:dev fnproject/perl:5.Y.Z-dev
```

Push:

```sh
docker push fnproject/perl
```
