// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract ErrorHandling {
    function div(uint x, uint y) external pure returns(uint) {
        require(y > 0, "div by 0");

        assert((x / y) > 0);

        return x / y;
    }
}