# Programming Docker Images - Microcontainers

The purpose of these images is to provide the smallest possible images for
every major programming language. Read more about it in this
[Microcontainers blog post](https://medium.com/travis-on-docker/microcontainers-tiny-portable-docker-containers-1507e3bf8688).

Use the `fnproject/LANGUAGE:dev` images for building/vendoring.

Use the `fnproject/LANGUAGE` images for running (much smaller than the dev ones).

## Building

Run:

```sh
ruby build.rb [START_FROM]
```

If build breaks somewhere, can continue by adding `START_FROM`.
