FROM ethereum/client-go:release-1.9

RUN apk update &&\
    apk add bash

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

ENTRYPOINT /root/start.sh
