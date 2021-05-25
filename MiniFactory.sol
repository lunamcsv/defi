// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import "./core/FrameFactory.sol";

contract MiniFactory is FrameFactory {
    constructor() FrameFactory(msg.sender) {
        feeTo = msg.sender;
    }
}