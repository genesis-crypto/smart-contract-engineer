// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract LocalVariables {
    function mul() external pure returns (uint) {
        uint x = 123456;
        return x * x;
    }
}