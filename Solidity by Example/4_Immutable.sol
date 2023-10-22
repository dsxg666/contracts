// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// immutable 只能修改一次的变量。immutable 的值可以在构造函数内部设置，但之后不能修改。

contract Immutable {
    address public immutable MY_ADDRESS;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
    }
}