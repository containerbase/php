# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM ghcr.io/containerbase/buildpack:3.15.1@sha256:da243150ed9866034c7ed62af965401edc0c88fc2c654557c30cdda836fc0f6e

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
