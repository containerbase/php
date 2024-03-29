#-------------------------
# renovate rebuild trigger
# https://www.php.net/supported-versions.php
#-------------------------

# makes lint happy
FROM scratch


# EOL 2021-12-06
# renovate: datasource=docker depName=php versioning=docker
ENV PHP_VERSION=7.3.33

# EOL 2022-11-28
# renovate: datasource=docker depName=php versioning=docker
ENV PHP_VERSION=7.4.32

# EOL 2023-11-26
# renovate: datasource=docker depName=php versioning=docker
ENV PHP_VERSION=8.0.25
