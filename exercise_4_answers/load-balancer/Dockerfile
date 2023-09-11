# Use the standard Nginx image from Container Registry
FROM nginx

# copy the nginx.conf to /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# expose port 8080
EXPOSE 8080

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]
