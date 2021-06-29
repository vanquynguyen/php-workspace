# Generated via generate.sh. Please don't edit directly

FROM sunasteriskrnd/php-workspace:7.3

RUN composer self-update 1.9.0

RUN docker-php-ext-install -j "$(nproc)" exif \
    && docker-php-ext-enable exif

RUN apk add --no-cache \
    wkhtmltopdf \
    fontconfig \
    ttf-freefont

