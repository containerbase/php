# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.7

FROM ghcr.io/containerbase/buildpack:4.5.0@sha256:8773a4b0e3d01b2c41b9c9774d0c982ccf36e275f3e6b267ff0ccd0e8e3dd5d9

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
