# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM ghcr.io/containerbase/buildpack:3.17.2@sha256:7481fa8425a57912a40c20068d930414713f4e9deb76957b0a92a637b6355ac5

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
