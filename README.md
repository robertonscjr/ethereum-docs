# ethereum-docs

**contract deployment**: MyContract.deployed().then(function(instance) { deployed = instance; })

**send transaction from a to b**: eth.sendTransaction({from: 'a', to: 'b', value: web3.toWei(1, "ether")})

**get etherbase balance**: web3.fromWei(eth.getBalance(eth.coinbase), "ether")

## ethereum private network

**init**: geth --datadir data init GENESIS.json

**bootnode**: bootnode -genkey bootnode.key; bootnode -nodekey bootnode.key

**interactive node**: geth --networkid {net_id} --bootnodes {bootnode_address} --datadir {path/to/data} --rpc --rpcapi="eth,net" console 2>> ~/interactive.log

**miner node**: geth --networkid {net_id}  --bootnodes {bootnode_address} --port {node_port} --datadir minerdata --mine --minerthreads=1 --etherbase={miner_address}

**start mining on console**: miner.start()

## deploy contract

**compile contract**: solc --abi --bin SAMPLE_CONTRACT.sol

**on console**:
```
personal.unlockAccount(eth.coinbase)

abi = <SAMPLE_CONTRACT.abi>
bytecode = '0x<SAMPLE_CONTRACT.bin>'

sample_contract = eth.contract(abi)

deploy = {from:eth.coinbase, data:bytecode, gas: 2000000}
sample_contract_partial_instance = sample_contract.new(deploy)

sample_contract_instance = sample_contract.at(sample_contract_partial_instance.address)

sample_contract_instance.printParam()
```
