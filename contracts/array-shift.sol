// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract ArrayShift {
    uint[] public arr = [1, 2, 3];

    function remove(uint index) external {
        uint size = arr.length;
        delete arr[index];
        uint old = arr[index];

        for (uint i = index; i <= size - 1; i++) {
            arr[i] = arr[i + 1];
            arr[i + 1] = old;
        }
        arr.pop();
    }
}