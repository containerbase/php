# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.8

FROM ghcr.io/containerbase/buildpack:4.6.4@sha256:de95eb5c8ccf17eba3aa8f0a6f6aa64e3b5c5e14d76a797ff2a07110d254e524

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
