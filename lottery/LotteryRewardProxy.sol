// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import "./libs/IERC20.sol";
import "./libs/SafeERC20.sol";
import "./Lottery.sol";

contract LotteryRewardProxy {
    using SafeERC20 for IERC20;

    Lottery public lottery;
    IERC20 public cake;
    address public adminAddress;

    constructor(
        Lottery _lottery,
        IERC20 _cake,
        address _admin
    ) {
        lottery = _lottery;
        cake = _cake;
        adminAddress = _admin;
    }

    event Inject(uint256 amount);

    uint8[4] private nullTicket = [0,0,0,0];

    modifier onlyAdmin() {
        require(msg.sender == adminAddress, "admin: wut?");
        _;
    }

    function inject(uint256 _amount) external onlyAdmin {
        cake.safeApprove(address(lottery), _amount);
        lottery.buy(_amount, nullTicket);
        emit Inject(_amount);
    }

    function setAdmin(address _adminAddress) external onlyAdmin {
        adminAddress = _adminAddress;
    }

}