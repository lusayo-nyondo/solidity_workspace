// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract S {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract T {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract U is S("s"), T("t") {

}

contract V is S, T {
    constructor() S("S from V") T("T from V") {

    }
}

contract X is S("s"), T {
    constructor(string memory _name) T(_name) {
    }
}