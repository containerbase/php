# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.19

FROM ghcr.io/containerbase/buildpack:1.9.0@sha256:7a445e77431e8acb20c48b91727f5509ff94f8019d31635218d4d6e22fd9b2ac

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
