FROM ubuntu

RUN apt-get update && apt-get install -y \
  nginx \
  vim \
  sudo \
  tcpdump \
  iproute2

CMD ["nginx", "-g", "daemon off;"]
