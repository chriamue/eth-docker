FROM node:7
MAINTAINER Christian <chriamue@gmail.com>

RUN git clone https://github.com/cubedro/eth-netstats \
    && cd eth-netstats \
    && npm install \
    && npm install -g grunt-cli \
    && grunt

WORKDIR /eth-netstats

EXPOSE 3000

CMD ["npm", "start"]