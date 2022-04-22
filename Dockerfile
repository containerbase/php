# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM ghcr.io/containerbase/buildpack:3.15.2@sha256:e74d7f6648f01f13ea81da87eab63b2dc80b5dd527c0ea06cf8379d9e3a796d1

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
