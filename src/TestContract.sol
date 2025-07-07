//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract TestContract {
    constructor(address dummy1, address dummy2) {}

    function getMessage() public pure returns (string memory) {
        return "Hello, this is a test contract!";
    }

    function getAddress() public view returns (address) {
        return address(this);
    }
}
