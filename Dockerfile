# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.7

FROM ghcr.io/containerbase/buildpack:4.1.0@sha256:410953f53ec400345d6905e1559bf437802b3254c36878a7f82db3b255e9660e

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
