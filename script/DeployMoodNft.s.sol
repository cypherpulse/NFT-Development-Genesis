// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {MoodNft} from "../src/MoodNft.sol";

contract DeployMoodNft is Script {
    function run() external returns (MoodNft){}

    function svgToImageURI(string memory svg) public pure returns (string memory ){
        string memory baseURL = "data:image/svg+xml;base64,";
    }
}