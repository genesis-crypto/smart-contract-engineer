// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Base {
    function getHashEncoded(
        string memory _first,
        string memory _second
    ) external pure returns (bytes32) {
        return keccak256(abi.encode(_first, _second));
    }

    function getHashEncodedPacked(
        string memory _first, 
        string memory _second
    ) external pure returns(bytes32) {
        return keccak256(abi.encodePacked(_first, _second));
    }
}