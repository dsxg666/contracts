// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// Solidity 中可以通过本地和外部的方式倒入文件：
// 本地方式
/* Foo.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

struct Point {
    uint x;
    uint y;
}

error Unauthorized(address caller);

function add(uint x, uint y) pure returns (uint) {
    return x + y;
}

contract Foo {
    string public name = "Foo";
}
*/
/*
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// import Foo.sol from current directory
import "./Foo.sol";

// import {symbol1 as alias, symbol2} from "filename";
import {Unauthorized, add as func, Point} from "./Foo.sol";

contract Import {
    // Initialize Foo.sol
    Foo public foo = new Foo();

    // Test Foo.sol by getting it's name.
    function getFooName() public view returns (string memory) {
        return foo.name();
    }
}
*/

// 外地方式
// 通过url从GitHub导入
import "https://github.com/dsxg666/contracts/blob/master/token/ERC20/ERC20.sol";