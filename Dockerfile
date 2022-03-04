# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.28

FROM ghcr.io/containerbase/buildpack:3.8.0@sha256:76fb6e1091b34c81b1f8b1f6b6e00f2ad77316865648672f6299d5fc6ff6e9d8

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
