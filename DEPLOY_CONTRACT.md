**compile contract**:
```
solc --abi --bin SAMPLE_CONTRACT.sol
```

**on geth**:
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