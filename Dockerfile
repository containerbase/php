# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=8.1.12

FROM ghcr.io/containerbase/buildpack:5.0.0@sha256:8a8ef4739fc702d6b6cd6c39c79b6ec18ab4c18a9b3eddcafc4c916f85c9a17b

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
