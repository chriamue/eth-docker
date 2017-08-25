#!/bin/bash
set -e
cd /root/eth-net-intelligence-api
sed -i -e "s/<HOSTNAME>/$HOSTNAME/g" app.json
sed -i -e "s/<WS_SERVER>/$WS_SERVER/g" app.json
sed -i -e "s/<WS_PORT>/$WS_PORT/g" app.json
sed -i -e "s/<WS_SECRET>/$WS_SECRET/g" app.json
/usr/bin/pm2 start ./app.json
sleep 3
geth --datadir=$DATA_DIR init "/root/files/genesis.json"
sleep 3
BOOTSTRAP_IP=`getent hosts $BOOTSTRAP_HOSTNAME | cut -d " " -f1`
sleep 1
BOOTSTRAP_IP=`getent hosts $BOOTSTRAP_HOSTNAME | cut -d " " -f1`
echo $BOOTSTRAP_HOSTNAME
echo $BOOTSTRAP_IP
GETH_OPTS=${@/XXX/$BOOTSTRAP_IP}
echo $GETH_OPTS
geth $GETH_OPTS
