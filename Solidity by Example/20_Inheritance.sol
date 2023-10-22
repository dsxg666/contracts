// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Solidity 支持多继承，继承关键字为 is。
// 一个要被子函数覆盖的父函数必须使用关键字 virtual；一个要重写父函数的子函数必须使用关键字 override。

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D E
*/

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Contracts inherit other contracts by using the keyword 'is'.
contract B is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in different contracts, parent contracts are searched from right to left, and in depth-first manner.
// 当调用在不同合约中多次定义的函数时，父契约从右到左搜索，并以深度优先的方式搜索。
contract D is B, C {
    // D.foo() returns "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B"
    // since B is the right most parent contract with function foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

// Inheritance must be ordered from “most super” to “most derived”.
// Swapping the order of A and B will throw a compilation error.
contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
}