// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Solidity 有三种类型的变量：
// 局部变量 声明在函数里面，不会存储在区块链上。
// 状态变量 声明在函数外面，会存储在区块链上。
// 全局变量 是内置变量，提供区块链的相关信息。


contract Variables {
    uint public num = 123;// 状态变量

    function doSomething() public {
        uint i = 456; // 局部变量
        uint timestamp = block.timestamp; // 全局变量，提供当前区块的时间戳
    }
}