// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MyFirstContract {
    // string public hey = "Hey Happy";
    // uint256 public num = 7;

    string public hey;
    uint256 public num;

    // constructor(string memory _hey, uint _num) {
    //     hey = _hey;
    //     num = _num;
    // }

    function addInfo(string memory _hey, uint _num) public {
        hey = _hey;
        num = _num;
    }
}
