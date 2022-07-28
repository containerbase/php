# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.8

FROM ghcr.io/containerbase/buildpack:4.8.0@sha256:770081b699d5f3d12f58d1f095aa91b27d4df9daa57ec5745b98c6cfadaa42b6

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
