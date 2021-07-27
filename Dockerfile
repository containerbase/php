# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.21

FROM ghcr.io/containerbase/buildpack:1.12.1@sha256:8c056fb4682770ec740dd930985cf658b0953eebd95ca0d184554e97912e9657

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
