# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.16

FROM ghcr.io/containerbase/buildpack:1.3.0@sha256:8d0bd58e02d271304e6ab378aede3927dd2cfb98cdae59d0e8bf6f66a5393963

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
