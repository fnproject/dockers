FROM fnproject/fn-java-svm:dev as build

FROM scratch as final
LABEL maintainer="tomas.zezula@oracle.com"

WORKDIR function
ENTRYPOINT ["./func", "-XX:MaximumHeapSizePercent=80"]
