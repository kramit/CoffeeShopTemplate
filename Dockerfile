FROM nginx:1.23.1
WORKDIR C:/Users/git/case0/CoffeeShopTemplate/
COPY Index.html /usr/share/nginx/html/
RUN chown nginx:nginx /usr/share/nginx/html/Index.html
EXPOSE 49153

