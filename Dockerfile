# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.8

FROM ghcr.io/containerbase/buildpack:4.7.0@sha256:aa27b16720014d3944c7e457210617e9456fcb953d4af474b61287375eb2ea8e

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
