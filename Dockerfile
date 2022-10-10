# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.11

FROM ghcr.io/containerbase/buildpack:4.16.5@sha256:bdf0e65d99fde7d3e708dee2b3591289c8b0545b02f0f56d70ebad3159b36a27

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
