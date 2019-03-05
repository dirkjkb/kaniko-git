FROM gcr.io/kaniko-project/executor@sha256:54b58d1a52e393f24b915a245da27c6b38512f3726e6024103b3046b7d85a31e 

FROM alpine:3.7

RUN apk add --no-cache bash sed grep coreutils
RUN apk --update add git openssh && \
rm -rf /var/lib/apt/lists/* && \
rm /var/cache/apk/*

ADD run.sh /run.sh

ENTRYPOINT ["/run.sh", "run"]
