// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// import "https://github.com/lunamcsv/defi/blob/main/core/PantherFactory.sol";
import "./core/PantherFactory.sol";

contract LunaFactory is PantherFactory {
    constructor(address _feeToSetter) PantherFactory(_feeToSetter) {
        
    }
}