// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract SendEther {
    function sendEther(address payable _to, uint _amount) external {
        (bool sent, ) = _to.call{value: _amount}("");

        require(sent, "failed");
    }

    function sendEther2(address payable _to) external payable {
        (bool sent,) = _to.call{value: msg.value}("");
        require(sent, "failed");
    }
}