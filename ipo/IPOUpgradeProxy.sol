// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import "./libs/TransparentUpgradeableProxy.sol";

/**
 * @dev FrameSwap: Initial Frame Offering
 *
 * Website: https://frameswap.com
 * Dex: https://dex.frameswap.com
 * Twitter: https://twitter.com/FrameSwap
 *
 */
contract IPOUpgradeProxy is TransparentUpgradeableProxy {

    constructor(address admin, address logic, bytes memory data) TransparentUpgradeableProxy(logic, admin, data) {

    }

}
