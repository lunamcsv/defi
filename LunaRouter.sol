// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// import "https://github.com/lunamcsv/defi/blob/main/periphery/PantherRouter.sol";
import "./periphery/PantherRouter.sol";

contract LunaRouter is PantherRouter {
    constructor(address _factory, address _WETH) PantherRouter(_factory, _WETH) {
        
    }
}