// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract EtherWallet {
    address payable public immutable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint amount) external {
        require(msg.sender == owner, "Not owner");

        (bool sent, ) = owner.call{value: amount}("");
        require(sent, "Failed to send");
    }
}