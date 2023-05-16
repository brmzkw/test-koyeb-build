FROM nginx:1.23.4


RUN mkdir -p /cnb/lifecycle


COPY launcher /cnb/lifecycle/launcher
COPY web /cnb/process/web
