// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 在 Solidity 0.8 版本后，发生数字溢出和下溢会抛出错误。
// 这可以通过使用 unchecked 来禁用，如果可以保证数字不会发生溢出和下溢，可以通过禁止节省 gas。

contract UncheckedMath {
    function add(uint x, uint y) external pure returns (uint) {
        // 22291 gas
        // return x + y;

        // 22103 gas
    unchecked {
        return x + y;
    }
    }

    function sub(uint x, uint y) external pure returns (uint) {
        // 22329 gas
        // return x - y;

        // 22147 gas
    unchecked {
        return x - y;
    }
    }

    function sumOfCubes(uint x, uint y) external pure returns (uint) {
        // Wrap complex math logic inside unchecked
    unchecked {
        uint x3 = x * x * x;
        uint y3 = y * y * y;

        return x3 + y3;
    }
    }
}