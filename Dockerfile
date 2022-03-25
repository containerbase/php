# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.28

FROM ghcr.io/containerbase/buildpack:3.13.1@sha256:64e79936ea6eaa05a7097008fd31a501aca3ca222f9af2981e8fb8e05af7c7ee

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
