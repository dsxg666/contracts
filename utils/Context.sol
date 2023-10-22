// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Context.sol 用于提供有关当前执行上下文的信息，包括交易的发送方及其数据。
// 这些信息通常是在合约内直接通过 msg.Sender 和 msg.data 获得，但它们不应该以这种直接的方式被访问，
// 因为发送和支付执行的账户不一定是实际的发送者（就应用程序而言）。

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}