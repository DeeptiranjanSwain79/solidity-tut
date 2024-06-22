// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ReceiveEther {
    // TO receive you need to make the contract payable otherwise you can't receive
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        // this method is not recommended to send ether
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure
        // THis function is not recommended to send ether
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send ether");
    }

    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure
        // THis is current recommended method to use
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send ether");
    }
}
