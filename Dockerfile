# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.21

FROM ghcr.io/containerbase/buildpack:1.11.0@sha256:f7ad21fee77a5e0ad278684121ae7e470cf684a6a7789f1969acc8e0611dc42f

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
