// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

interface IPantherMigrator {
    function migrate(address token, uint amountTokenMin, uint amountETHMin, address to, uint deadline) external;
}