FROM python:3.6-slim-stretch

RUN apt-get update && apt-get install --no-install-recommends -qy build-essential gcc && \
    apt-get clean

RUN addgroup --gid 1000 --system fn && adduser --system --uid 1000 --ingroup fn fn
