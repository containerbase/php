# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.27

FROM ghcr.io/containerbase/buildpack:3.3.1@sha256:a6ac6dc0b781be64c64bfe40c9d7f746954bf8b0d768aff9b67f08d0df1c7926

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
