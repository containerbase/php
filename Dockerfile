# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.11

FROM ghcr.io/containerbase/buildpack:4.16.8@sha256:7fbb21fe2441a497b12e1fb3076e6799fcf9a37189906f4500dfff559591eb99

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
