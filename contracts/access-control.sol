// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract AccessControl {
    mapping(bytes32 => mapping(address => bool)) public roles;
    bytes32 public constant ADMIN = keccak256(abi.encodePacked("ADMIN"));

    modifier onlyRole(bytes32 _role) {
        require(roles[_role][msg.sender], "not allowed");
        _;
    }

    constructor() {
        roles[ADMIN][msg.sender] = true;
    }

    function _grantRole(bytes32 _role, address _user) internal {
        roles[_role][_user] = true;
    }

    function grantRole(bytes32 _role, address _user) external onlyRole(ADMIN) {
        _grantRole(_role, _user);
    }

    function revokeRole(bytes32 _role, address _user) external onlyRole(ADMIN) {
        roles[_role][_user] = false;
    }
}