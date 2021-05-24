// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import "./libs/TransparentUpgradeableProxy.sol";

/**
 * @dev PantherSwap: Initial Panther Offering
 *
 * Website: https://pantherswap.com
 * Dex: https://dex.pantherswap.com
 * Twitter: https://twitter.com/PantherSwap
 *
 */
contract IPOUpgradeProxy is TransparentUpgradeableProxy {

    constructor(address admin, address logic, bytes memory data) TransparentUpgradeableProxy(logic, admin, data) {

    }

}
