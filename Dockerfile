FROM nginx

ARG BUILDARG1
ARG BUILDARG2
ARG BUILDARG3
RUN env >> /tmp/buildenv

COPY koyeb.html /usr/share/nginx/html/index.html

COPY e.sh /e.sh

