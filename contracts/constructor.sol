// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract ConstructorIntro {
    uint public x;
    address public owner;

    constructor(uint _x) {
        x = _x;
        owner = msg.sender;
    }
}