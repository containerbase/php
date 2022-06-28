# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.7

FROM ghcr.io/containerbase/buildpack:4.6.1@sha256:25d37c733efd068daad8d31d32952948ecf8c244a68d27116c8eb90afa792bd0

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
