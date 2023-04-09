// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contracts must be marked as abstract when at least one of their functions is not implemented
abstract contract Feline {
    function utterance() public virtual returns (bytes32);
}

// Contracts can marked as abstract even all function is implemented.
abstract contract Context {
    function msgSender() internal view virtual returns (address) {
        return msg.sender;
    }
}

/*
Abstract contracts are similar to Interfaces but an interface is more limited in what it can declare.

If a contract inherits from an abstract contract and does not implement
all non-implemented functions by overriding, it needs to be marked as abstract as well.
*/