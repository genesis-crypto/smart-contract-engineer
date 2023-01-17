// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract ViewAndPureFunctions {
    uint public num;

    function addToNum(uint x) external view returns(uint) {
        return num  + x;
    }

    function add(uint x, uint y) external pure returns(uint) {
        return x + y;
    }
}