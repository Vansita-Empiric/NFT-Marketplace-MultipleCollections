// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleNFT is ERC721 {

    constructor(string memory name, string memory symbol)
        ERC721(name, symbol)
    {}
   
    // to increment token id
    uint256 public nextTokenId;

    // Mint NFT to msg.sender
    function createNFT(address _minter) external {
        _mint(_minter, nextTokenId);
        nextTokenId++;
    }

    function approveTransfer(address to, uint256 tokenId, address from) public {
        _approve(to, tokenId, from);
    }

}