FROM nginx:latest

# Copy the HTML and CSS files to Nginx's default web directory
COPY survey.html /usr/share/nginx/html/index.html
COPY survey.css /usr/share/nginx/html/

# Copy custom Nginx config (if needed)
COPY nginx_config /etc/nginx/conf.d/survey.conf

# Expose port 80
EXPOSE 80

# Start Nginx (default CMD is already set in the base image)
