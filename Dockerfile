# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.9

FROM ghcr.io/containerbase/buildpack:4.11.0@sha256:3d079dfe09510b539c0a96941e08c2e727c611ed2fa31be6aed1a41959d853f8

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
