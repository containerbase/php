# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.10

FROM ghcr.io/containerbase/buildpack:4.13.4@sha256:8a65ca5bcf8a7101537bf9962bac8e69a5be78678ee225d8cd9fb6da7b0cbaa5

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
