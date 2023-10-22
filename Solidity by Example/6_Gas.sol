// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 一笔交易需要支付多少 ether？
// 你需要花费 gas spent * gas price 这么多数量的 ether，其中：
//     1. gas 是计算单位
//     2. gas spent 是指在一笔交易中使用的总 gas 数量，由 Solidity 程序的复杂程度决定。
//     3. gas price 是每个 gas 支付多少 ether，由自己设置。
// 进行交易前，还需要自己设置 gas limit，即愿意为交易使用的最大 gas 的数量。如果 gas spent > gas limit，交易将会执行失败；
// 如果执行成功，即 gas spent <= gas limit，未花费的 gas 将会返还。无论交易是否成功，被花费的 gas 都不会返还。
// 通常，gas price 较高的交易会被优先包含进区块。