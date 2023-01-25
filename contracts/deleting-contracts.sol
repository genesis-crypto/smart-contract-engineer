// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract Destruct {
    function destroy() external {
        selfdestruct(payable(msg.sender));
    }
}