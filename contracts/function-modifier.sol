// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionModifier {
    bool public paused;
    uint public count;

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    modifier whenPaused {
        require(paused, "not paused");
        _;
    }

    function dec() external whenNotPaused {
        count -= 1;
    }

    function reset() external whenPaused {
        count = 0;
    }
}