// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract ArrayShift {
    uint[] public arr = [1, 2, 3];

    function remove(uint index) external {
        require(index < arr.length, "out of bound");
        uint size = arr.length;
        delete arr[index];

        for (uint i = index; i < size - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }
}