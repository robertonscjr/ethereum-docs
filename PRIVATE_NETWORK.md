**init**: geth --datadir data init GENESIS.json

**bootnode**: bootnode -genkey bootnode.key; bootnode -nodekey bootnode.key

**interactive node**: geth --networkid {net_id} --bootnodes {bootnode_address} --datadir {path/to/data} --rpc --rpcapi="eth,net" console 2>> ~/interactive.log

**miner node**: geth --networkid {net_id}  --bootnodes {bootnode_address} --port {node_port} --datadir minerdata --mine --minerthreads=1 --etherbase={miner_address}

**start mining on console**: miner.start()
