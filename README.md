# Docker S3FS Fuse Binary

![S3FS Logo](https://raw.githubusercontent.com/s3fs-fuse/s3fs-fuse/29355d75b0aa7e15e5def8c0be6ff5c8ef45643f/doc/s3fs.png)

s3fs allows Linux, macOS, and FreeBSD to mount an S3 bucket via FUSE. s3fs preserves the native object format for files, allowing use of other tools like [AWS CLI](https://github.com/aws/aws-cli).

## Usage

```sh
$ docker run --rm --interactive --tty \
  lstellway/s3fs-fuse-bin <command>
```

## Reference

-   [S3FS GitHub Repository](https://github.com/s3fs-fuse/s3fs-fuse)
-   [Issues](https://github.com/lstellway/docker-s3fs-fuse-bin/issues)
