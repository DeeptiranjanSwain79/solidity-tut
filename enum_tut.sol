// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum {
    enum OrderStatus {
        PENDING,
        SHIPPED,
        ACCEPTED,
        REJECTED,
        CANCELED
    }

    OrderStatus public oStatus;

    function get() public view returns (OrderStatus) {
        return oStatus;
    }

    function set(OrderStatus _status) public {
        oStatus = _status;
    }

    function cancelOrder() public {
        oStatus = OrderStatus.CANCELED;
    }

    function reset() public {
        delete oStatus;
    }
}
