// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import "./core/FrameFactory.sol";

contract XFactory is FrameFactory {
    constructor(address _feeToSetter) FrameFactory(_feeToSetter) {
        
    }
}