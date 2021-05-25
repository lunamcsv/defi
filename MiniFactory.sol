// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// import "https://github.com/lunamcsv/defi/blob/main/core/FrameFactory.sol";
import "./core/FrameFactory.sol";

contract MiniFactory is FrameFactory {
    constructor() FrameFactory(msg.sender) {
        feeTo = msg.sender;
    }
}