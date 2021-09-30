# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.24

FROM ghcr.io/containerbase/buildpack:1.19.0@sha256:2a9bbc66b6c389037dc0bef3a2ac46fd0da6ab475bea27f452a16efb91a3aea9

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
