# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.29

FROM ghcr.io/containerbase/buildpack:3.15.3@sha256:5afc91a3cb61dc2dbfee7182c684803fd49add89b15cc508a36ffc13080a7f54

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
