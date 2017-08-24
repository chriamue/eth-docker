#!/bin/bash
set -e

sed -i -e "s/<HOSTNAME>/$HOSTNAME/g" /root/eth-net-intelligence-api/app.json
sed -i -e "s/<WS_SERVER>/$WS_SERVER/g" /root/eth-net-intelligence-api/app.json
sed -i -e "s/<WS_PORT>/$WS_PORT/g" /root/eth-net-intelligence-api/app.json
sed -i -e "s/<WS_SECRET>/$WS_SECRET/g" /root/eth-net-intelligence-api/app.json

cd /root/eth-net-intelligence-api
/usr/bin/pm2 start ./app.json
sleep 3

geth --datadir=~/.ethereum/chain init "/root/data/genesis.json"
sleep 3

BOOTSTRAP_IP=`getent hosts eth-bootstrap | cut -d" " -f1`
GETH_OPTS=${@/BOOTSTRAP/$BOOTSTRAP_IP}
geth $GETH_OPTS
