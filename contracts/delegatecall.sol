// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Parent {
    string public name;
    address public owner;
    event Log(address caller);

    constructor() {
        owner = msg.sender;
    }

    function setName(string calldata _name) external {
        emit Log(msg.sender);
        name = _name;
    }

    function getName() external view returns (string memory) {
        return name;
    }
}

contract Children {
    string public name;

    function triggerNameDelegated(address addr, string memory _name) external {
        (bool status,) = addr.delegatecall(
            abi.encodeWithSignature('setName(string)', _name)
        );
        require(status, 'tx failed');
    }

    function triggerNameCall(address addr, string memory _name) external {
        (bool status,) = addr.call(
            abi.encodeWithSignature('setName(string)', _name)
        );
        require(status, 'tx failed');
    }
}