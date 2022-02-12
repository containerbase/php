# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.27

FROM ghcr.io/containerbase/buildpack:3.6.0@sha256:3ecda6073b9fc4a4584d33a009c6775914a36d678fbe3d54d7a00930b83b3c42

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
