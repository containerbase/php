# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.21

FROM ghcr.io/containerbase/buildpack:1.12.0@sha256:ada50b06ca0539bd05b24c99e996c813b14895d2d11143b9b25c6d774d3617f1

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
