// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract StateVariables {
    uint public num;

    function resetNum() external {
        num = 0;
    }

    function getNumPlusOne() external view returns (uint) {
        return num + 1;
    }
}