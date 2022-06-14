# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.7

FROM ghcr.io/containerbase/buildpack:4.3.0@sha256:060fbf7bb736ecde6f166da6b1bb8416fef930e1a496b39a711b33848b2d8997

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
