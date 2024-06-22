// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract LearnFunction {
    uint256 hey;

    // Get data with help of the function
    function getInfo() public view returns (uint256) {
        return hey;
    }

    // Update data
    function updateData(uint256 _hey) public {
        hey = _hey;
    }

    function get(uint256 _a, uint256 _b) public pure returns(uint256) {
        uint256 newNumber = _a + _b;
        return newNumber;
    }
}