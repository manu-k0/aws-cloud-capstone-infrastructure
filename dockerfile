# Use an official, lightweight Nginx image
FROM nginx:alpine

# Metadata labeling
LABEL maintainer="DevOps Engineer"
LABEL description="Production-ready frontend container for Cloud Capstone project"

# Copy custom configuration or static files if necessary
# (For a placeholder, we use Nginx's default public folder)
ECHO "Cloud Capstone Application Running Successfully" > /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx in the foreground so the container stays active
CMD ["nginx", "-g", "daemon off;"]
