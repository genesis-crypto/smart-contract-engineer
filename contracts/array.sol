// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract ArrayBasic {
    uint[] public arr;

    function get(uint i) external view returns (uint) {
        return arr[i];
    }

    function push(uint x) external {
        arr.push(x);
    }

    function remove(uint i) external {
        delete arr[i];
    }

    function getLength() external view returns(uint) {
        return arr.length;
    }

    function populate() external {
        // Cost of 3757475025 Ethers
        for (uint i = 1; i < 1000000; i++) {
            arr.push(i ** 2);
        }
    }
}