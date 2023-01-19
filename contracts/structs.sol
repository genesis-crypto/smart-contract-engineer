// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract StructExamples {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    mapping(address => Car) public ownerCar;

    function getCar(address owner) external view returns(Car memory) {
        return ownerCar[owner];
    }

    function setCar(address owner, Car memory sample) external {
        ownerCar[owner] = sample;
    }
}