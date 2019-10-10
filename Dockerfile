ARG alpine=3.9

FROM alpine:3.9 AS build

RUN set -ex && apk --update --no-cache add \
    bash \
    make \
    cmake \
    automake \
    curl \
    git \
    g++ \
    sudo

WORKDIR /tmp
COPY install/install-flatbuffers.sh /tmp
RUN chmod +x /tmp/install-flatbuffers.sh
RUN /tmp/install-flatbuffers.sh

ENTRYPOINT [ "flatc", "--version" ]
