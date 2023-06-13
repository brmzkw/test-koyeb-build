FROM ubuntu

WORKDIR /root

RUN apt-get update && apt-get install -y \
  nginx \
  vim \
  sudo \
  tcpdump \
  iproute2 \
  screen \
  less \
  curl

ENV TERM=xterm
# https://github.com/diegomura/react-pdf/issues/666
ENV NODE_OPTIONS=--max_old_space_size=8192

COPY screenrc /root/.screenrc

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

RUN . ~/.bashrc && nvm install v18.16.0

CMD ["nginx", "-g", "daemon off;"]
