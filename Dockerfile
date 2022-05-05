# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM ghcr.io/containerbase/buildpack:3.17.0@sha256:f91acba8a5f89bf1f8751042fdb6e1bad66b358bf2fbceec4cb5a140da234a64

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
