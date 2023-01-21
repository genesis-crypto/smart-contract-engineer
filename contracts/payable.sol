// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract Payable {
    address payable public immutable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() external payable {}

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}