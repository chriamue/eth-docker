FROM ethereum/client-go:v1.6.5

RUN apk update && apk upgrade\
    && apk add git nodejs bash

RUN cd /root &&\
    git clone https://github.com/cubedro/eth-net-intelligence-api &&\
    cd eth-net-intelligence-api &&\
    npm install &&\
    npm install -g pm2

ADD run.sh /root/run.sh
ADD app.json /root/eth-net-intelligence-api/app.json
RUN chmod +x /root/run.sh

ENTRYPOINT /root/run.sh