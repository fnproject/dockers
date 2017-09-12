FROM fnproject/erlang

# Env
ENV REBAR_VERSION 3.3.6

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
    && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add git make wget ca-certificates

# Install rebar
# TODO: Fix this, doesn't work
# RUN wget -cqO- https://github.com/erlang/rebar3/archive/${REBAR_VERSION}.tar.gz | tar -C /tmp -xzf -
# RUN cd /tmp \
#     && cd rebar-${REBAR_VERSION} \
#     && make \
#     && cp rebar /usr/bin/rebar \
#     && cd / && rm -rf /tmp/rebar-${REBAR_VERSION}

RUN apk del wget ca-certificates \
    && rm -rf /var/cache/apk/*