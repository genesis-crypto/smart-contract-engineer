// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract IterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function getSize() public view returns(uint) {
        return keys.length;
    }

    function setBalance(address addr, uint _balance) external {
        balances[addr] = _balance;

        if (!inserted[addr]) {
            keys.push(addr);
            inserted[addr] = true;
        }
    }

    function iterate() external view returns (uint [] memory) {
        uint size = getSize();
        uint[] memory data = new uint[](size);

        for (uint i = 0; i < size; i++) {
            address addr = keys[i];
            data[i] = balances[addr];
        }

        return data;
    }
}