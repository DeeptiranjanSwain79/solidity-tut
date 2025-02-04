// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

library Math {
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y < 3) {
            z = y;
            uint256 x = (y / 2) + 1;
            while (x < z) {
                z = x;
                x = ((y / x) + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
    }
}

contract TestMath {
    function testSquareRoot(uint256 x) public pure returns (uint256) {
        return Math.sqrt(x);
    }
}

library Array {
    function remove(uint256[] storage arr, uint256 index) public {
        require(arr.length > 0, "Can't remove fromm empty array");
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}

contract TestArray {
    using Array for uint256[];

    uint256[] public arr;

    function testArrayRemove() public {
        for (uint256 i = 0; i < 3; i++) {
            arr.push();
        }

        arr.remove(1);

        assert(arr.length == 2);
        assert(arr[0] == 0);
        assert(arr[1] == 2);
    }
}
