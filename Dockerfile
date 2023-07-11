FROM nginx

ARG BUILDARG1=defaultvalue
ARG BUILDARG2=defaultvalue
ARG BUILDARG3=defaultvalue

RUN env >> /tmp/buildenv

RUN echo $BUILDARG1 >> /tmp/buildargs
RUN echo $BUILDARG2 >> /tmp/buildargs
RUN echo $BUILDARG3 >> /tmp/buildargs

COPY koyeb.html /usr/share/nginx/html/index.html

COPY e.sh /e.sh

