# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.21

FROM ghcr.io/containerbase/buildpack:1.10.2@sha256:5853ca42be2f230ba9282631c4250c08797be832e88044f1f8d59a5a8158d87a

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
