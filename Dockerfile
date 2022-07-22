# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.8

FROM ghcr.io/containerbase/buildpack:4.7.1@sha256:43e23b020abc5c3d44bb8faa98d6fc3b16791c5b4d25e39d54eb0b2af96fe562

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
