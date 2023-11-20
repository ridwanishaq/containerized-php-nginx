# Use the official NGINX image as a parent image
FROM nginx:latest

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom NGINX configuration
COPY docker/nginx/default.conf /etc/nginx/conf.d/

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the PHP application files
COPY app/ .

# Expose port 80 for NGINX
EXPOSE 80
