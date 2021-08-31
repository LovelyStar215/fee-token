// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

abstract contract IStakingRewards {

  event Staked(address, uint256);
  event Withdrawn(address, uint256);
  event RewardPaid(address, uint256);
  event RewardAdded(uint256, uint256);

  function totalSupply() external view virtual returns (uint256);
  function balanceOf(address account) external view virtual returns (uint256);
  function stake(uint256 amount) external virtual;

  function rewardPerToken() public view virtual returns (uint256);
  function earned(address account) public view virtual returns (uint256);
  function getReward() public virtual;
  function quit() external virtual;
  function withdraw(uint256 amount) public virtual;
  function lastTimeRewardApplicable() public view virtual returns (uint256);
}