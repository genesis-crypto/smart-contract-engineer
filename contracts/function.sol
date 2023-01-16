// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionIntro {
    function add(uint a, uint b) external pure returns(uint) {
        return a + b;
    }

    function sub(uint x, uint y) external pure returns(uint) {
        return x - y;
    }
}