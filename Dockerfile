#---------------------------------------------------------------------------
# Dockerfile to build Docker Image of Nginx WebServer with JavaScript Snake
#
# Made by Ilya Molotov  04-March-2023
#---------------------------------------------------------------------------
# Развернуть приложение на nginx
FROM nginx:1.22.1
# Заменяем дефолтную страницу nginx веб-приложением
RUN rm -rf /var/www/nginx/html/*
COPY app/* /var/www/nginx/html/
COPY nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]