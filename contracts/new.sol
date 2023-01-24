// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Base {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract New {
    Base[] public baseCollection;

    function setName(string memory _name) external {
        Base baseInstance = new Base(_name);
        baseCollection.push(baseInstance);
    }
}