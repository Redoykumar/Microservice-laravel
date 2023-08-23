# Use a PHP 8.2 base image
FROM php:8.2-fpm

# Set working directory
WORKDIR /var/www/html

# Install required extensions
RUN apt-get update && apt-get install -y \
    curl \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql


# Copy Laravel application files
COPY src /var/www/html

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel dependencies
RUN composer install

# Expose port
EXPOSE 8080

# Start PHP-FPM
# CMD ["php-fpm"]
CMD php artisan serve --host=0.0.0.0 --port=8080