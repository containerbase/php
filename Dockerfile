# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.11

FROM ghcr.io/containerbase/buildpack:4.16.4@sha256:fc7c5472ca4b2fd3d0cca406ac2c3dc450738cb22da6069d523625296c52de1e

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
