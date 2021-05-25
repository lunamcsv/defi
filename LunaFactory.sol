// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// import "https://github.com/lunamcsv/defi/blob/main/core/FrameFactory.sol";
import "./core/FrameFactory.sol";

contract LunaFactory is FrameFactory {
    constructor(address _feeToSetter) FrameFactory(_feeToSetter) {
        
    }
}