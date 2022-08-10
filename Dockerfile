# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.9

FROM ghcr.io/containerbase/buildpack:4.10.0@sha256:97be66af4ffb3a3d1be000f6cf5f8a866b6ae6a8f93fe592ef8f908afce38b30

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
