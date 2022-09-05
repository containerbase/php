# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.10

FROM ghcr.io/containerbase/buildpack:4.13.5@sha256:0d01068b7924b724806806ac24344ef4f695cc9d3419d3f82584fb763a7bc093

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
