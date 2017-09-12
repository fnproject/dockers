
Image on Docker Hub: https://hub.docker.com/r/fnproject/elixir

## Building this image

```sh
docker build -t fnproject/elixir:latest .
```

Tag the version, check it with `docker run --rm fnproject/elixir elixir -v`:

```sh
docker tag fnproject/elixir:latest fnproject/elixir:X
docker tag fnproject/elixir:latest fnproject/elixir:X.Y
docker tag fnproject/elixir:latest fnproject/elixir:X.Y.Z
```

Push:

```sh
docker push fnproject/elixir
```
