**send transaction from a to b**: eth.sendTransaction({from: 'a', to: 'b', value: web3.toWei(1, "ether")})
**get etherbase balance**: web3.fromWei(eth.getBalance(eth.coinbase), "ether")
