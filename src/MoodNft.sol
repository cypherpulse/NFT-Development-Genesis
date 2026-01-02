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
import {Base64} from "@openzeppelin/contracts/utils/Base64.sol";

contract MoodNft is ERC721{
    string private s_sadSvgImageUri;
    string private s_happySvgImageUri;
    uint256 private s_tokenCounter;

    enum Mood{
        HAPPY,
        SAD
    }

    mapping(uint256 => Mood) private s_tokenIdToMood;

    constructor(string memory sadSvgImageUri, string memory happySvgImageUri) ERC721("Mood NFT", "MN"){
        s_tokenCounter = 0;
        s_sadSvgImageUri = sadSvgImageUri;
        s_happySvgImageUri = happySvgImageUri;
    }

    function mintNFT() public {
        _safeMint(msg.sender,s_tokenCounter);
        s_tokenIdToMood[s_tokenCounter] = Mood.HAPPY;
        // can be written as s_tokenCounter += 1; or s_tokenCounter++;
        s_tokenCounter = s_tokenCounter + 1;
    }

    function _baseURI() internal pure override returns (string memory) {
    return "data:application/json;base64,";
}

    function tokenURI(uint256 tokenId) public view override returns(string memory){
        string memory imageURI;
        if(s_tokenIdToMood[tokenId]==Mood.HAPPY){
            imageURI = s_happySvgImageUri;
        }else{
            imageURI = s_sadSvgImageUri;
        }

        return string(
            abi.encodePacked(
                _baseURI(),
                Base64.encode(
                    bytes(
                        abi.encodePacked(
                            '{"name:"',
                            name(),
                            '",description:"An NFT that reflects your mood!","attributes":[{"trait_type":"Mood","value":100}],"image":"',
                            imageURI,
                            '"}'
                        )
                    )
                )
            )
        );
    }
}