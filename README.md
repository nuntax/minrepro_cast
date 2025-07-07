## minimal reproduction for cast create bug
```sh
# setup anvil
anvil

# Correctly encodes the input and will succeed. equivalent to following solidity code:
# abi.encodePacked(bytecode, abi.encode(0xba5Ed099633D3B313e4D5F7bdc1305d3c28ba5Ed, 0xba5Ed099633D3B313e4D5F7bdc1305d3c28ba5Ed));
cast send --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://127.0.0.1:8545 --create $(cast abi-encode --packed "x((bytes, bytes))" "( $(forge inspect TestContract bytecode), $(cast abi-encode "x((address, address))" "(0xba5Ed099633D3B313e4D5F7bdc1305d3c28ba5Ed,0xba5Ed099633D3B313e4D5F7bdc1305d3c28ba5Ed)"))") 

# Incorrectly encodes by not omitting the selector and will fail
cast send --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://127.0.0.1:8545 --create $(forge inspect TestContract bytecode) "TestContract(address,address)" 0xba5Ed099633D3B313e4D5F7bdc1305d3c28ba5Ed 0xba5Ed099633D3B313e4D5F7bdc1305d3c28ba5Ed fails
```

