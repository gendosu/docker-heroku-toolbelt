# 本体
#
# VERSION               0.0.1

FROM      gendosu/ubuntu-base:latest

MAINTAINER Gen Takahashi "gendosu@gmail.com"

RUN apt-get update \
&&  apt-get upgrade -y --force-yes \
&&  apt-get install -y --force-yes \
    sudo \
    postgresql-client \
&&  apt-get clean \
&&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN mkdir -p /products
WORKDIR /products

RUN wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh \
&&  heroku update

