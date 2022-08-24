FROM nginx:1.23.1-alpine
ADD /html /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html/
EXPOSE 80