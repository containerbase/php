# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.28

FROM ghcr.io/containerbase/buildpack:3.12.2@sha256:44db9bd1b00b4971583c71c0bb2c724f44d992a30aee3cfbf871092213ac5c6e

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
