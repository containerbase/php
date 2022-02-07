# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.27

FROM ghcr.io/containerbase/buildpack:3.3.3@sha256:e1ce413567fe80cb73221d3d20a13067e173c00ad972e96176891c6958d65bd8

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
