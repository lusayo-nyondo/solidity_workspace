// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract VariableTypes {
    int public changingValue;

    function getChangingValue() external returns(int) {
        int localValue = 1;

        changingValue += localValue;

        return changingValue;
    }

    function getLocalValue() external returns(int) {
        int localValue = 1;

        changingValue += localValue;

        return localValue;
    }
}