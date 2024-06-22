// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FallBack {
    event Log(string func, uint256 gas);

    // Fallback function must be declared as external
    fallback() external payable {
        // send / transfer (forwards 2300 gas to this fallback function)
        emit Log("fallback", gasleft());
    }

    receive() external payable {
        emit Log("receive", gasleft());
    }

    // Helper function to check balance of this contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send ether");
    }
}
