// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.5.0
pragma solidity ^0.8.24;
import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract MyTimelock is TimelockController {
    //minddelay how long to wait before exeuting
    //proposer is the list of address than can proposed
    //executors is the list of address than can execute
    constructor(uint256 minDelay, address[] memory _proposers, address[] memory _executors)
        TimelockController(minDelay, _proposers, _executors, msg.sender)
    {}
}
