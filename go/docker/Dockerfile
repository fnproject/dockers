FROM fnproject/go:dev

RUN go get github.com/Masterminds/glide
RUN curl -sLo docker.tgz https://get.docker.com/builds/Linux/x86_64/docker-17.05.0-ce.tgz && tar -xvf docker.tgz && mv ./docker/docker /bin/docker
