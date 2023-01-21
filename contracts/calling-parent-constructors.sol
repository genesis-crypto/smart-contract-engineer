// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract A {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract B {
    uint public age;

    constructor(uint _age) {
        age = _age;
    }
}

contract C is A, B {
    string public location;

    constructor(string memory _location, string memory _name, uint _age) A(_name) B(_age) {
        location = _location;
    }
}