
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721{
    uint256 private s_tokenCounter;
    mapping(uint256 => string) private s_tokenIdToUri;

    constructor() ERC721("Cypherpulse", "CYPHER"){
        s_tokenCounter = 0;
    }

    function mintNft(string memory) public{}

    function tokenURI(uint256 tokenId) public view override returns (string memory){
        return ""
    }

}