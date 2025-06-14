// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable {
    address public owner;

    int public ownerCalls;
    int public publicCalls;

    constructor() {
        owner = msg.sender;
    }

    function protectedCall() external {
        require(msg.sender == owner, "not owner");
        ownerCalls++;
    }

    function nonProtectedCall() external {
        publicCalls++;
    }
}