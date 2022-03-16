# Docker S3FS Fuse

![S3FS Logo](https://raw.githubusercontent.com/s3fs-fuse/s3fs-fuse/29355d75b0aa7e15e5def8c0be6ff5c8ef45643f/doc/s3fs.png)

s3fs allows Linux, macOS, and FreeBSD to mount an S3 bucket via FUSE. s3fs preserves the native object format for files, allowing use of other tools like [AWS CLI](https://github.com/aws/aws-cli).

Read more on the [S3FS GitHub Repository](https://github.com/s3fs-fuse/s3fs-fuse).

## About This Image

This image is based on [Alpine Linux](https://hub.docker.com/_/alpine).

## Usage

```sh
$ docker run --rm --interactive --tty \
  lstellway/s3fs-fuse <command>
```

## Building

To build an Alpine Docker image with S3FS:

```dockerfile
# Ensure the required library dependencies are installed
RUN apk update && apk add --no-cache \
    libxml2 fuse libcurl libstdc++

# Copy the binary from the lstellway/s3fs-fuse image
COPY --from=lstellway/s3fs-fuse /usr/local/bin/s3fs /usr/local/bin/s3fs
```

## Reference

-   [Docker Hub Repository](https://hub.docker.com/r/lstellway/s3fs-fuse)
-   [Docker S3FS Fuse GitHub Repository](https://github.com/lstellway/docker-s3fs-fuse)
-   [S3FS GitHub Repository](https://github.com/s3fs-fuse/s3fs-fuse)
-   [Issues](https://github.com/lstellway/docker-s3fs-fuse-bin/issues)
