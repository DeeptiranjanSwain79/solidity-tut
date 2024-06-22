// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Callee {
    uint256 public x;
    uint256 public value;

    function setX(uint256 _x) public returns (uint256) {
        x = _x;
        return x;
    }

    function setXandSetEather(uint256 _x)
        public
        payable
        returns (uint256, uint256)
    {
        x = _x;
        value = msg.value;

        return (x, value);
    }
}

contract Caller {
    uint256[] temp1;

    function setX(Callee _callee, uint256 _x) public {
        uint256 x = _callee.setX(_x);
        temp1.push(x);
    }

    function setXFromAddress(address _addr, uint256 _x) public {
        Callee callee = Callee(_addr);
        callee.setX(_x);
    }

    function setXandSendEther(Callee _callee, uint256 _x) public payable {
        (uint256 x, uint256 value) = _callee.setXandSetEather{value: msg.value}(
            _x
        );
        temp1.push(x);
        temp1.push(value);
    }
}
