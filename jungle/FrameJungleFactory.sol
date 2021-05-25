// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import "./libs/Ownable.sol";
import "./libs/ReentrancyGuard.sol";
import "./FrameJungle.sol";

contract FrameJungleFactory is Ownable {
    event NewFrameJungleContract(address indexed frameJungle);

    constructor() {
        //
    }

    /*
     * @notice Deploy the pool
     * @param _stakedToken: staked token address
     * @param _rewardToken: reward token address
     * @param _rewardPerBlock: reward per block (in rewardToken)
     * @param _startBlock: start block
     * @param _endBlock: end block
     * @param _poolLimitPerUser: pool limit per user in stakedToken (if any, else 0)
     * @param _admin: admin address with ownership
     * @return address of new frame jungle contract
     */
    function deployPool(
        IBEP20 _stakedToken,
        IBEP20 _rewardToken,
        uint256 _rewardPerBlock,
        uint256 _startBlock,
        uint256 _bonusEndBlock,
        uint256 _poolLimitPerUser,
        address _admin
    ) external onlyOwner {
        require(_stakedToken.totalSupply() >= 0);
        require(_rewardToken.totalSupply() >= 0);
        require(_stakedToken != _rewardToken, "Tokens must be be different");

        bytes memory bytecode = type(FrameJungleInitializable).creationCode;
        bytes32 salt = keccak256(abi.encodePacked(_stakedToken, _rewardToken, _startBlock));
        address frameJungleAddress;

        assembly {
            frameJungleAddress := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }

        FrameJungleInitializable(frameJungleAddress).initialize(
            _stakedToken,
            _rewardToken,
            _rewardPerBlock,
            _startBlock,
            _bonusEndBlock,
            _poolLimitPerUser,
            _admin
        );

        emit NewFrameJungleContract(frameJungleAddress);
    }
}
