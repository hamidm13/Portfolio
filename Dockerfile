# Use a lightweight base image
FROM nginx:alpine

# Copy the static files to the Nginx default directory
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
