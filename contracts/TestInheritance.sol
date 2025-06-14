// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "B";
    }

    function baz() public pure returns (string memory) {
        return "C";
    }
}

contract B is A {
    function foo() public pure virtual override returns(string memory) {}
    function bar() public pure virtual override returns(string memory) {}
}

contract C is B {
    function bar() public pure virtual override returns (string memory) {
        return "Bar in C";
    }
}

contract D is B, C {
    function foo() public pure override(B) returns (string memory) {
        return "foo D";
    }

    function bar() public pure override(B, C) returns (string memory) {
        return "bar D";
    }
}