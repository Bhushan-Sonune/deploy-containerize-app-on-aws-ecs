# Serve the static Wallora website with Nginx
FROM nginx:alpine

# Copy the website into Nginx's default document directory
COPY index.html /usr/share/nginx/html/index.html

# Nginx listens on port 80 inside the container
EXPOSE 80

# Basic container health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
