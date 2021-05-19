# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.19

FROM ghcr.io/containerbase/buildpack:1.10.0@sha256:b7630c77e29bbfada900a74df043e6e9a49b60ed0c17e2ed0315a3bd5416da53

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
