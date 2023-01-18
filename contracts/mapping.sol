// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract MappingBasic {
    mapping(address => uint) public balances;

    function get(address _addr) external view returns(uint) {
        return balances[_addr];
    }

    function set(address _addr, uint _val) external {
        balances[_addr] = _val;
    }
    
    function remove(address _addr) external {
        delete balances[_addr];
    }
}