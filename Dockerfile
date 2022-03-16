# Builder
ARG ALPINE_VERSION=3.15
FROM alpine:${ALPINE_VERSION} as builder
ARG S3FS_VERSION=1.91

# Install dependencies
RUN apk update \
    && apk add --no-cache \
    build-base automake autoconf libxml2-dev fuse-dev curl-dev

# Download source
RUN wget "https://github.com/s3fs-fuse/s3fs-fuse/archive/refs/tags/v${S3FS_VERSION}.tar.gz" -O - | tar -zx

# Build
RUN cd $(ls -d s3fs*) \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make install \
    && stat /usr/local/bin/s3fs

# Create fresh copy
FROM alpine:${ALPINE_VERSION} as final

RUN apk update \
    && apk add --no-cache libxml2 fuse libcurl libstdc++

COPY --from=builder /usr/local/bin/s3fs /usr/local/bin/s3fs
ENTRYPOINT ["/usr/local/bin/s3fs"]
