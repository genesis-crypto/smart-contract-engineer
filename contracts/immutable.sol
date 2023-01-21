// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Immutable {
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }
}