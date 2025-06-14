// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract EventTest {
    event Log(string message, uint val);
    event IndexedLog(address indexed sender, uint val);

    function example() external {
        emit Log({message: "Foo", val: 1234});
        emit IndexedLog(msg.sender, 789);
    }

    event Message(address indexed _from, address indexed _to, string _message);

    function sendMessage(address _to, string calldata _message) external {
        emit Message({_from: msg.sender, _to: _to, _message: _message});
    }
}