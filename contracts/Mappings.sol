// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mappings {
    mapping(address => int) public addressCalls;
    address[] public names;

    function mapCall() external {
        addressCalls[msg.sender]++;
        names.push(msg.sender);
    }
}