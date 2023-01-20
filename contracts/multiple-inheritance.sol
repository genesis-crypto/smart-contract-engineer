// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract Base {
    function base() public pure virtual returns(string memory) {
        return "Base Func";
    }
}

contract Middle is Base {
    function base() public pure virtual override returns(string memory) {
        return "Middle <-> Base Func";
    }

    function middle() public pure virtual returns(string memory) {
        return "Middle Func";
    }
}

contract End is Base, Middle {
    function base() public pure override(Base, Middle) returns(string memory) {
        return "End <-> Base Func";
    }

    function end() public pure returns(string memory) {
        return "End Func";
    }
}