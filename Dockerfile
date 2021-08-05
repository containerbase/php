# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.22

FROM ghcr.io/containerbase/buildpack:1.14.0@sha256:34169f83f6e465012ea5b73dbc5468f5c9a90e303674af3db08fed5007cee1ae

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
