# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.11

FROM ghcr.io/containerbase/buildpack:4.16.7@sha256:243e922d833c32129231a0fc30c0f1d152a8cb568d4f89a8ce6391b551090047

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
