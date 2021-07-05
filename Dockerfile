# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.20

FROM ghcr.io/containerbase/buildpack:1.10.1@sha256:39c77d18cbfb05d696642436b40b4d0553df52a1b2fad160c1dffd813ee429ab

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
