// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions




//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract MoodNft is ERC721{
    string private s_sadSVG;
    string private s_happySvg;
    uint256 private s_tokenCounter;

    constructor(string memory sadSVG, string memory happySvg) ERC721("Mood NFT", "MN"){
        s_tokenCounter = 0;
        s_sadSVG = sadSVG;
        s_happySvg = happySvg;
    }

    function mintNFT() public {
        _safeMint(msg.sender,s_tokenCounter);
        // can be written as s_tokenCounter += 1; or s_tokenCounter++;
        s_tokenCounter = s_tokenCounter + 1;
    }

    function tokenURI(uint256 tokenId) public view override returns(string memory){}
}