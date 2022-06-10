# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.7

FROM ghcr.io/containerbase/buildpack:3.17.6@sha256:e97ba9ba67626725da4c9ce404711d80ce9b209177a608ef43ac97caeeab64dc

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
