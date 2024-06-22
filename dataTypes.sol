// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DataTypes {
    bool public hey;
    bool public no = true;

    // UNIT unsigned integer, non -ve integers of different sizes
    // uint8 // range 0 -> 2 ** 8 - 1 = 255
    // uint16 // range 0 -> 2 ** 16 - 1
    // uint256 // range 0 -> 2 ** 256 - 1
    // if you don't define the number it'll take automatically uint256
    uint8 public u8 = 1;
    uint256 public u256 = 456;

    // NEGATIVE NUMBER
    // -ve numbers are allowed for int types.
    int256 public negative1 = -1;
    int256 public neg2 = 678;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // ARRAY
    //the datatypes byte represent a sequence of bytes, so generally there are two types of bytes
    // ---fix sized byte array
    //--dynamic sized byte array (implicitly it's a dynamic)

    bytes1 public a;
    bytes1 public b;

    // ADDRESS Type 
    address public addr1;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}
