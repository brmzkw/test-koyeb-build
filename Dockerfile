FROM nginx:1.23.4


RUN mkdir -p /cnb/lifecycle
RUN ln -s /docker-entrypoint.sh /cnb/lifecycle/launcher


COPY web /cnb/process/web
