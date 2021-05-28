FROM composer:2.0.13 AS composer

FROM php:7.3.27-cli-alpine

RUN apk update

RUN apk add git

WORKDIR /app

COPY --from=composer /usr/bin/composer /usr/bin/composer
