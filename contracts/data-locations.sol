// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract DataLocations {
    struct User {
        string name;
        string[] pets;
    }

    mapping(address => User) public users;

    function get(address addr) external view returns(User memory) {
        User memory user = users[addr];
        return user;
    }

    function setUser(string calldata name, string[] memory pets) external {
        User memory user = User(name, pets);
        users[msg.sender] = user;
    }

    function setPets(address addr, string[] memory pets) external {
        User storage user = users[addr];
        user.pets = pets;
    }
}