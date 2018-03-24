FROM fnproject/go:dev as build-stage
FROM fnproject/base:edge
COPY --from=build-stage /usr/local/go/lib/time/zoneinfo.zip /usr/local/go/lib/time/zoneinfo.zip
