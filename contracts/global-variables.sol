// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract GlobalVariables {
    function returnSender() external view returns(address) {
        return msg.sender;
    }
}