# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.19

FROM ghcr.io/containerbase/buildpack:1.8.0@sha256:3adec8196bcec7d1b822c24938347edaf9572d575c71e13aefa22fd80bbeb2ef

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
