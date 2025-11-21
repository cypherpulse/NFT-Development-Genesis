// SPDX: Lisense-Identifier: MIT

pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test{
    DeployBasicNft public deployer;
}