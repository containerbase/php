# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.24

FROM ghcr.io/containerbase/buildpack:1.19.1@sha256:01446b3d46c04837461316723fe6acceb306b20c8ea0e0bf2210f7bef8f87e70

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
