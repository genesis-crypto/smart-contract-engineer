// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Base {
    string public name;
    event Log(string message);
    constructor() {
        name = "base contract";
    }

    function getLocation() external returns(string memory) {
        emit Log("getting location");
        return "Ny";
    }
}

contract Caller {
    function callBaseContract(address addr) external returns(bytes memory) {
        (bool success,bytes memory data) = addr.call(
            abi.encodeWithSignature('getLocation()')
        );
        require(success, 'tx failed');
        return data;
    }
}