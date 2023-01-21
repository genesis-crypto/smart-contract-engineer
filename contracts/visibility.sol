// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract Parent {
    uint private i = 100;
    uint public a = 10;
    uint internal b = 10;

    function publicFunction() public view returns (uint) {
        return a;
    }

    function privateFunction() private view returns (uint) {
        return i;
    }

    function internalFunction() internal view returns (uint) {
        return b;
    }

    function externalFunction() external pure returns (uint) {
        return 100;
    }
}

contract Children is Parent {
    uint private age = 10;

    function privateChildrenFunction() private view returns (uint) {
        return age;
    }
}