# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the HTML and CSS files to the Nginx web root
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Expose port 80 to be able to access the web server
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
