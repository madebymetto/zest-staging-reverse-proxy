FROM nginx:alpine
COPY default.conf /etc/nginx/default.conf.template
EXPOSE 80
CMD ["/bin/sh" , "-c" , "envsubst < /etc/nginx/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
