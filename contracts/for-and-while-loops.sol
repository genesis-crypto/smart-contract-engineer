// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract ForAndWhileLoops {
    function sum(uint _n) external pure returns(uint) {
        uint acumulator = 0;

        while (_n > 0) {
            acumulator += _n;
            _n--;
        }

        return acumulator;
    }
}