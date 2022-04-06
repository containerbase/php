# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.28

FROM ghcr.io/containerbase/buildpack:3.14.2@sha256:932d192005b0452d52368c7496f01b75b60d42fc9e1be2594d57fb3c4ed5694c

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
