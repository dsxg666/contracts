// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Event {
    // Event declaration
    // Up to 3 parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}

/*
Events allow logging to the Ethereum blockchain. Some use cases for events are:
    1. Listening for events and updating user interface
    1. A cheap form of storage
*/