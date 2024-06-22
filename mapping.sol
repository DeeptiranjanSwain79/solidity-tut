// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mapping {
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        // Mapping always returns a value, if value is not set then it'll return the default value
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        // update value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr1, uint256 _i) public view returns (bool) {
        // we can get values from mapping even when it's not initialized
        return nested[_addr1][_i];
    }

    function set(address _addr, uint _i, bool _boo) public {
        nested[_addr][_i] = _boo;
    }   

    function remove(address _addr, uint _i) public {
        delete nested[_addr][_i];
    }
}
