// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Payable {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit ether into this contract
    // Call this function along with some ether.
    // The balance of this contract will automatically be updated
    function deposit() public payable {}

    // Call this function along with some ether.
    // The function will throw an error since this function is not payble
    function notPayable() public {}

    // Function to withdraw all ether from this contract
    function withdraw() public {
        // get the amount of ether stored in this contract
        uint256 amount = address(this).balance;

        // send all ether to owner
        // Owner can receive ether since the address of owner is payable
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send ether");
    }

    // Function to transfer ether from this contract to address from input
    function transfer(address payable _to, uint256 _amount) public {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send ether");
    }
}
