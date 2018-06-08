**init**: geth --datadir="testnet" --ipcdisable --port 30301 --rpcport 8101 --networkid="1234" --nodiscover init CustomGenesis.json

**console**: geth --datadir="testnet" --ipcdisable --port 30301 --rpcport 8101 --networkid="1234" --nodiscover console 2>> testnet.log

**start mining**: miner.start()

**get etherbase balance**: web3.fromWei(eth.getBalance(eth.coinbase), "ether")
