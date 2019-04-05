FROM fnproject/java:1.8

ENV KOTLIN_COMPILER_URL=https://github.com/JetBrains/kotlin/releases/download/v1.2.0/kotlin-compiler-1.2.0.zip

RUN apk --no-cache add bash

RUN apk add --update openssl

RUN mkdir -p /opt

RUN wget $KOTLIN_COMPILER_URL -O /tmp/a.zip && \
    unzip /tmp/a.zip -d /opt && \
    rm /tmp/a.zip

ENV PATH $PATH:/opt/kotlinc/bin
