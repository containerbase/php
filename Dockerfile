# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.27

FROM ghcr.io/containerbase/buildpack:3.5.0@sha256:99df776a61d154a0647af8a17426b80842727e23ea0987d174756d515d5cf707

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
