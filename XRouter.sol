// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import "./periphery/FrameRouter.sol";

contract XRouter is FrameRouter {
    constructor(address _factory, address _WETH) FrameRouter(_factory, _WETH) {
        
    }
}