// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello world");
        emit AnotherLog();
    }
}
