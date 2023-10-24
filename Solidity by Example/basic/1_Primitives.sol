// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Solidity 基本数据类型：
// bool 布尔类型，只能取两个值之一：true | false。
// int 整数类型，允许为负数。提供不同大小可供选择：
//     int    ranges from -2 ** 255 to 2 ** 255 - 1, int is an alias for int256
//     int8   ranges from -2 ** 7 to 2 ** 7 - 1
//     int16  ranges from -2 ** 15 to 2 ** 15 - 1
//     ...
//     int256 ranges from -2 ** 255 to 2 ** 255 - 1
// uint 无符号整数类型，即非负数整数。提供不同大小可供选择：
//     uint    ranges from 0 to 2 ** 256 - 1, uint is an alias for uint256
//     uint8   ranges from 0 to 2 ** 8 - 1
//     uint16  ranges from 0 to 2 ** 16 - 1
//     ...
//     uint256 ranges from 0 to 2 ** 256 - 1
// address 地址类型，为40个16进制数。
// array 数组类型，Solidity 提供两种数组类型：
//     静态数组 uint[5] fixedArray
//     动态数组 uint[] dynamicArray
// byte 字节类型，代表一个字节序列。bytes 是 byte[] 的简写。


contract Primitives {
    // 默认值：未赋值的变量的值。
    bool public defaultBool; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
