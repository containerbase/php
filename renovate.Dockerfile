#-------------------------
# renovate rebuild trigger
# https://www.php.net/supported-versions.php
#-------------------------

# makes lint happy
FROM scratch


# renovate: datasource=github-releases depName=containerbase/php-prebuild
ENV PHP_VERSION=7.3.28

# renovate: datasource=github-releases depName=containerbase/php-prebuild
ENV PHP_VERSION=7.4.19

# renovate: datasource=github-releases depName=containerbase/php-prebuild
ENV PHP_VERSION=8.0.6
