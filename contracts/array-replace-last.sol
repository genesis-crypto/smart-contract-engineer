// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract ArrayReplaceLast {
    uint[] public arr = [1, 2, 3, 4];

    function remove(uint _index) external {
        require(_index < arr.length, "out of bound");
        delete arr[_index];
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }
}