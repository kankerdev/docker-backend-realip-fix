FROM nginx:alpine-slim

RUN apk add --no-cache gettext

COPY nginx.conf.template /etc/nginx/nginx.conf.template

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80/tcp

ENTRYPOINT [ "/entrypoint.sh" ]