#!/bin/sh

envsubst '${SERVER_NAME} ${BACKEND_HOST} ${BACKEND_PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start NGINX in the foreground
nginx -g 'daemon off;'