// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Array {
    uint256[] public arr1;
    uint256[] public arr2 = [1, 2, 3];

    // In fixed sized array all elements are initialized with 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr1[i];
    }

    // declaring infinite array should always be avoided
    function getArr() public view returns (uint256[] memory) {
        return arr1;
    }

    function push(uint256 i) public {
        arr1.push(i);
    }

    function pop() public {
        arr1.pop();
    }

    uint256[] public arr;

    function remove(uint256 _index) public {
        require(_index < arr.length, "index out of bound");

        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }
}
