# Use official Nginx base image
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx HTML files
RUN rm -rf ./*

# Copy all project files (including HTML, CSS, JS, images, and Bootstrap)
COPY . /usr/share/nginx/html

# Set correct file permissions
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
