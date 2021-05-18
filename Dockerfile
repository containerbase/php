# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.19

FROM ghcr.io/containerbase/buildpack:1.7.0@sha256:ae855a39fc9761ff58930c3e36aef44b134ae005a0c0cdb25dcf89292ccca821

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
