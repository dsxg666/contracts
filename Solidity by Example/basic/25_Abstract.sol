// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 当合约中至少有一个函数没有被实现时，它必须被标记为 abstract。
// 即使实现了所有的函数，也可以将合约标记为 abstract。
// 任何继承抽象合约的合约都必须实现这个抽象合约中没有实现的函数，否则会在编译时报错。
abstract contract Feline {
    function utterance() public virtual returns (bytes32);
}