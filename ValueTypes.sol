// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ValueTypes {
    bool public boolValue = false;
    uint public uintValue = 123;
    int public intValue = -123;
    string public stringValue = "This is a string value.";
    address public addressValue = address(this);
    bytes4 public bytes4Value = bytes4(0xDEADBEEF);

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    function add(int24 a, int24 b) pure external returns(int24){
        return a + b;
    }

    function subtract(int24 a, int24 b) pure external returns(int24) {
        return a - b;
    }
}