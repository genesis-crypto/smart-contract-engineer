// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract BaseContract {
    address payable public immutable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function getBlance() external view returns(uint) {
        return address(this).balance;
    }
}

contract Caller {
    function triggerBalance(address payable baseContract) external payable {
        (bool status, ) = address(BaseContract(baseContract)).call{value: msg.value}("");
    }

    function getBalanceOfBase(address payable addr) external view returns(uint) {
        return BaseContract(addr).getBlance();
    }
}