// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract PiggyBank {
    event Deposit(uint amount);
    event Withdraw(uint amount);

    address public owner;

    modifier isOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {
        emit Deposit(msg.value);
    }

    function withdraw() external payable isOwner {
        emit Withdraw(address(this).balance);
        selfdestruct(payable(owner));
    }
}