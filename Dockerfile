# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.24

FROM ghcr.io/containerbase/buildpack:1.19.4@sha256:5af93f8cfc1fe1378716184661981c2dbe8a3519ca546da7dfc85ad70e2f066c

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
