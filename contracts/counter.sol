// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract Count {
    uint public count;

    function inc() external {
        count++;
    }

    function dec() external {
        count--;
    }
}