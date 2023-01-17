// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract IfElse {
    function exercise_1(uint _x) external pure returns(uint) {
        if (_x > 0) {
            return 1;
        } else {
            return 0;
        }
    }

    function exercise_2(uint _x) external pure returns(uint) {
        return _x > 0 ? 1 : 0;
    }
}