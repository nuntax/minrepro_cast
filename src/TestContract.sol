//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract TestContract {
    constructor(address dummy1, address dummy2) {}

    function getMessage() public pure returns (string memory) {
        return "Hello, this is a test contract!";
    }

    function getAddress() public view returns (address) {
        abi.encodePacked(
            bytecode,
            abi.encode(
                0xba5Ed099633D3B313e4D5F7bdc1305d3c28ba5Ed,
                0xba5Ed099633D3B313e4D5F7bdc1305d3c28ba5Ed
            )
        );
        return address(this);
    }
}
