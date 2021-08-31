# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.23

FROM ghcr.io/containerbase/buildpack:1.17.1@sha256:86eaec5d77370b75232e7bce601718244f2e8440c4c573ae50f9e41cf9ccbf41

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
