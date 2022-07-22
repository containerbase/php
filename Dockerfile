# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.8

FROM ghcr.io/containerbase/buildpack:4.7.3@sha256:4fad95ac4053ed67236859f1565552d1506ee06d2562108ab87df50e683dca01

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
