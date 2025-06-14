// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract OwnableContract {
    address private owner;

    int public ownerCanEdit = 0;
    int public anyoneCanEdit = 0;

    struct Person{
        uint id;
        string firstName;
        string lastName;
    }

    constructor() {
        owner = msg.sender;
    }

    function getAddress() external view returns (address x) {
        return owner;
    }

    function editOwnerCanEdit() external {
        require(msg.sender == owner, "Only owner can call this.");
        ownerCanEdit++;
    }

    function editAnyoneCanEdit() external {
        anyoneCanEdit++;
    }
}