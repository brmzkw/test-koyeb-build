FROM nginx

COPY koyeb.html /usr/share/nginx/html/index.html

COPY e.sh /e.sh

