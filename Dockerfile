FROM debian:bullseye

RUN set -ex \
    && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
               build-essential \
               automake \
               autotools-dev \
               autopoint \
               gettext \
               pkg-config
    && apt-get clean \
    && rm -rf /tmp/* /var/tmp/*
