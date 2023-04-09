// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../IERC20.sol";

interface IERC20Metadata is IERC20 {
    // Returns the name of the token - e.g. "Ether".
    function name() external view returns (string memory);

    // Returns the symbol of the token. E.g. “ETH”.
    function symbol() external view returns (string memory);

    // Returns the number of decimals the token uses - e.g. 8,
    // means to divide the token amount by 100_000_000 to get its user representation.
    function decimals() external view returns (uint8);
}