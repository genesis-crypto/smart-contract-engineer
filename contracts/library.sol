// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

library ArrayLib {
    function sum(uint[] storage arr) internal view returns (uint) {
        uint acc;
        for (uint i = 0; i < arr.length; i++) {
            acc += arr[i];
        }
        return acc;
    }
}

contract Balance {
    using ArrayLib for uint[];
    uint[] public balances;

    constructor() {
        balances = [1000, 2000, 3000];
    }

    function sumTotalBalance() external view returns(uint) {
        return balances.sum();
    }
}