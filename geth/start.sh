#!/bin/bash
set -e
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
