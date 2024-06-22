// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Function {
    // Function can return many values
    function returnMany()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (7, true, 77);
    }

    // Return values can be named
    function namedReturn()
        public
        pure
        returns (
            uint256 x,
            bool b,
            uint256 y
        )
    {
        x = 7;
        b = true;
        y = 77;
    }

    // Use destructuring assignment when calling another
    // Function that returns multiple values
    function destructuringAssignments()
        public
        pure
        returns (
            uint256,
            bool,
            uint256,
            uint256,
            uint256
        )
    {
        (uint256 i, bool b, uint256 j) = returnMany();

        // Values can be left out
        (uint256 x, , uint256 y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // Can't use map for either input or output
    // But can use array for inout and output
    function arrayInput(uint256[] memory _arr) public {}

    uint256[] public arr1;

    function arrayOutput() public view returns (uint256[] memory) {
        return arr1;
    }
}
