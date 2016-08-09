# 本体
#
# VERSION               0.0.1

FROM      gendosu/ubuntu-ruby:2.2.4

MAINTAINER Gen Takahashi "gendosu@gmail.com"

RUN apt-get update \
&&  apt-get -y upgrade \
&&  apt-get install -y --force-yes \
    postgresql-client \
    libpq-dev \
    fonts-hanazono \
    imagemagick \
    language-pack-ja \
    fonts-migmix \
    sqlite3 \
    libsqlite3-dev \
    sudo \
&& apt-get clean \
&& rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN mkdir -p /products
WORKDIR /products

RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh \
&&  heroku update

