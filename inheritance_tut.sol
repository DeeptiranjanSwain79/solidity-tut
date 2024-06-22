// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/* 
        A
       / \
      B   C
     / \  /
    D  E  F
*/
contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    // Override A.foo();
    function foo() public pure virtual  override returns (string memory) {
        return "B";
    }
}

contract C is A {
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// Contracts can be inherted from multiple contracts, when a function is called which is defined multiple times in
// different contracts, parent contracts are searched from right to left, in depth-first manner

contract D is B, C {
    function foo() public pure virtual override (B, C) returns (string memory) {
        return super.foo();
    }
}



