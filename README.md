# eth-docker

Ethereum in docker containers.

## Based on

 - https://github.com/Capgemini-AIE/ethereum-docker
 - https://souptacular.gitbooks.io/ethereum-tutorials-and-tips-by-hudson/content/private-chain.html

## Change environment

Change in files:

 - .env

## Init using geth

```bash
geth init data/genesis.json
```

## Connect using Wallet

```bash
./ethereumwallet --rpc "http://localhost:8545"
```

## Attach

```bash
docker-compose exec eth geth attach ipc://root/.ethereum/chain/geth.ipc
```

## Mining

```bash
docker-compose up -d --compatibility gethminer
```
