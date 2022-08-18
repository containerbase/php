# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.9

FROM ghcr.io/containerbase/buildpack:4.13.0@sha256:46f4c73cda8fefcdbddcb26714a8a43db6b3489397d931059e3eb3bb4a510377

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
