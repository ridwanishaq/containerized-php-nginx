# Use an official PHP runtime as a parent image | php:8.2-apache
FROM php:8.2-fpm

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY app/ .


# Install any needed packages specified in requirement.txt
RUN apt-get update && apt-get install -y \
	libmcrypt-dev \
	&& docker-php-ext-install pdo_mysql

# Expose port 9000 for PHP-FPM
EXPOSE 9000
