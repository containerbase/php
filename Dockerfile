# renovate: datasource=github-releases depName=containerbase/php-prebuild
ARG PHP_VERSION=7.4.28

FROM ghcr.io/containerbase/buildpack:3.11.0@sha256:775e8c66662a0106dc587f9020ec2cdcc19e3d25f04b5ce71dad3fb062329995

ARG PHP_VERSION
RUN install-tool php

LABEL org.opencontainers.image.source="https://github.com/containerbase/php" \
      org.opencontainers.image.version="${PHP_VERSION}"

USER 1000
