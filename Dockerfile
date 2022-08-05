# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.9

FROM ghcr.io/containerbase/buildpack:4.8.2@sha256:bcdcbdc376bea0f072db7f39f2d49d6741994bdb794837279f8a46268d04374c

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
