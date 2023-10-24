// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 函数可见性关键字：
//     public   (1) 合约内可以调用 (2) 子合约可以调用 (3) 外部帐户可以访问
//     internal (1) 合约内可以调用 (2) 子合约可以调用 (3) 外部帐户不可访问
//     private  (1) 合约内可以调用 (2) 子合约不可调用 (3) 外部账户不可访问
//     external (1) 合约内不可调用 (2) 子合约不可调用 (3) 外部帐户可以访问
// 状态变量可见性关键字：和函数类似，但不能设置为 external，默认是 internal。

contract Base {
    function privateFunc() private pure returns (string memory) {
        return "private function called";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    function internalFunc() internal pure returns (string memory) {
        return "internal function called";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

    function publicFunc() public pure returns (string memory) {
        return "public function called";
    }

    function externalFunc() external pure returns (string memory) {
        return "external function called";
    }

    // This function will not compile since we're trying to callan external function here.
    // function testExternalFunc() public pure returns (string memory) {
    //     return externalFunc();
    // }

    // State variables
    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";
    // State variables cannot be external so this code won't compile.
    // string external externalVar = "my external variable";
}

contract Child is Base {
    // Inherited contracts do not have access to private functions
    // and state variables.
    // function testPrivateFunc() public pure returns (string memory) {
    //     return privateFunc();
    // }

    // Internal function call be called inside child contracts.
    function testInternalFunc() public pure override returns (string memory) {
        return internalFunc();
    }
}