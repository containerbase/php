# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.23

FROM ghcr.io/containerbase/buildpack:1.17.0@sha256:3dbc36d40a4d5b983eae8c950720d0ada380d937358b0601e7e0ad0189dc86ff

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
