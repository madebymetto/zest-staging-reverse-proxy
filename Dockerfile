FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["/bin/sh" , "-c" , "envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'"]
