// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract FunctionOutputs {
    function myFunc() external view returns(address, bool) {
        return (msg.sender, false);
    }
}