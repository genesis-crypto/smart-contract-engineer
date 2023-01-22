// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

interface IParent {
    function getAge() external view returns(uint);

    function getLocation() external view returns(string memory);
}

contract Parent is IParent {
    uint public age = 0;
    string public location = "";

    constructor() {
        age = 10;
        location = "NY";
    }

    function getAge() external view override returns (uint) {
        return age;
    }

    function getLocation() external view override returns (string memory) {
        return location;
    }
}

contract Children {
    string public name;

    constructor() {
        name = "yep";
    }

    function getLocationFromParent(address addr) external view returns(string memory) {
        return IParent(addr).getLocation();
    }
}   