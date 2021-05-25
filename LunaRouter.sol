// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// import "https://github.com/lunamcsv/defi/blob/main/periphery/FrameRouter.sol";
import "./periphery/FrameRouter.sol";

contract LunaRouter is FrameRouter {
    constructor(address _factory, address _WETH) FrameRouter(_factory, _WETH) {
        
    }
}