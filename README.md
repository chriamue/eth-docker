# eth-docker

Ethereum in docker containers.

## Based on

 - https://github.com/Capgemini-AIE/ethereum-docker
 - https://souptacular.gitbooks.io/ethereum-tutorials-and-tips-by-hudson/content/private-chain.html

## Change environment

Change in files:

 - .env

## Connect using Wallet

```bash
./ethereumwallet --rpc "http://localhost:8545"
```

## Attach

```bash
docker exec -it ethereumdocker_eth_1 geth attach ipc://root/.ethereum/chain/geth.ipc
```