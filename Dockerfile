# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.27

FROM ghcr.io/containerbase/buildpack:3.7.0@sha256:9491cc028c027665b5d2468cd2d47b9f62b103d8765724b3485049a7cb1203a7

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
