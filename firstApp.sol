// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NFTCount {
    uint public numberOfNFT;

    // Check total number of NFT
    function checkTotalNFT() public view returns(uint256) {
        return numberOfNFT;
    }

    // THis func will increment the NFT number
    function addNFT() public {
        numberOfNFT += 1;
    }

    // This will decrease the NFT by 1
    function deleteNFT() public {
        numberOfNFT -= 1;
    }
}