// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Gas {
    uint public i = 0;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    function forever() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }
    }
}

/*
How much ether do you need to pay for a transaction?
You pay gas spent * gas price amount of ether, where
    1. gas is a unit of computation
    2. gas spent is the total amount of gas used in a transaction
    3. gas price is how much ether you are willing to pay per gas

Transactions with higher gas price have higher priority to be included in a block.

Unspent gas will be refunded.

Gas Limit
There are 2 upper bounds to the amount of gas you can spend:
    1. gas limit (max amount of gas you're willing to use for your transaction, set by you)
    2. block gas limit (max amount of gas allowed in a block, set by the network)
*/