
Image on Docker Hub: https://hub.docker.com/r/funcy/elixir

## Building this image

```sh
docker build -t funcy/elixir:latest .
```

Tag the version, check it with `docker run --rm funcy/elixir elixir -v`:

```sh
docker tag funcy/elixir:latest funcy/elixir:X
docker tag funcy/elixir:latest funcy/elixir:X.Y
docker tag funcy/elixir:latest funcy/elixir:X.Y.Z
```

Push:

```sh
docker push funcy/elixir
```
