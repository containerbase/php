# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.22

FROM ghcr.io/containerbase/buildpack:1.13.0@sha256:8556dd89e7635009cecfb1212185f5019f4855916e730aaa3e026767228bad39

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
